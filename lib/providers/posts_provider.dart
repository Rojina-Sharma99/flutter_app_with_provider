import 'dart:convert';

import 'package:assessment_app/models/posts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostsProvider extends ChangeNotifier {
  // calling apiEndpoint to fetch the data
  static const apiEndpoint = 'https://jsonplaceholder.typicode.com/posts';

  //data that will hold the list of post once fetched
  List<Posts> data = [];
  bool isLoading = true;
  String error = '';

  // funstion responsible for fetching post from api
  Future<void> getDataFromApi() async {
    // try make an http get request to the api
    try {
      final response = await http.get(
        Uri.parse(apiEndpoint),
        headers: {
          'Accept': 'application/json', // ask for json response
          'User-Agent': 'FlutterApp',
        },
      );

      // if server respond sucessfully it will be 200- ok
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(response.body);
        data = jsonData.map((e) => Posts.fromJson(e)).toList();
        error = '';
      } else {
        // Handle error according different status codes
        switch (response.statusCode) {
          case 400:
            error =
                "Bad Request : the server could not understand your request.";
            break;
          case 401:
            error = "Unauthorized : please check your credentials.";
            break;
          case 403:
            error =
                "Forbidden : you don't have permission to access this resource.";
            break;
          case 404:
            error = "Not Found :  the requested resource was not found.";
            break;
          case 500:
            error =
                "Internal Server Error :  something went wrong on the server.";
            break;
          case 503:
            error =
                "Service Unavailable : the server is temporarily unavailable.";
            break;
          default:
            error = "Unexpected Error : ${response.statusCode}";
        }
      }
    } on http.ClientException catch (_) {
      error = "Network Error:  please check your internet connection.";
    } on FormatException catch (_) {
      error = "Data Error:  received invalid response format.";
    } catch (e) {
      error = "Unexpected Error: ${e.toString()}";
    }

    // This will mark loading done tell listner to rebuilt UI
    isLoading = false;
    notifyListeners();
  }
}
