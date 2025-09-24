import 'dart:convert';

import 'package:assessment_app/models/posts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostsProvider extends ChangeNotifier {
  static const apiEndpoint = 'https://jsonplaceholder.typicode.com/posts';
  List<Posts> data = [];
  bool isLoading = true;
  String error = '';

  Future<void> getDataFromApi() async {
    try {
      final response = await http.get(
        Uri.parse(apiEndpoint),
        headers: {'Accept': 'application/json', 'User-Agent': 'FlutterApp'},
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(response.body);
        data = jsonData.map((e) => Posts.fromJson(e)).toList();
        error = '';
      } else {
        error = 'Error: ${response.statusCode}';
      }
    } catch (e) {
      error = e.toString();
    }
    isLoading = false;
    notifyListeners();
  }
}
