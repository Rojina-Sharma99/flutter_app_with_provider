import 'package:assessment_app/models/posts.dart';
import 'package:assessment_app/providers/posts_provider.dart';
import 'package:assessment_app/screens/post_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // Fetch posts when the screen initializes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<PostsProvider>(context, listen: false).getDataFromApi();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PostsProvider>(context);
    provider.getDataFromApi(); // fetch data

    return Scaffold(
      appBar: AppBar(title: Text("Posts With Provider")),

      // show different UI depending on state, is loading/ get error/ get data
      body: provider.isLoading
          ? getLoadingUI()
          : provider.error.isNotEmpty
          ? getErrorUI(provider.error)
          : getDataUI(provider.data),

      //  Adding FloatingActionButton for retry if error occurs
      floatingActionButton: provider.error.isNotEmpty
          ? FloatingActionButton(
              onPressed: () => provider.getDataFromApi(),
              child: const Icon(Icons.refresh),
            )
          : null,
    );
  }

  //here returns a loading spinner UI shown while posts are being fetched.

  Center getLoadingUI() {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SpinKitFadingCircle(color: Colors.deepPurple, size: 70.0),
          Text("Loading..."),
        ],
      ),
    );
  }

  // Returns an error UI with a red text message.
  Center getErrorUI(String error) {
    return Center(
      child: Text(error, style: TextStyle(color: Colors.red)),
    );
  }

  // Builds a scrollable list of posts.

  Widget getDataUI(List<Posts> posts) {
    
    final provider = Provider.of<PostsProvider>(context, listen: false);

    return RefreshIndicator(
      onRefresh: () async {
        await provider.getDataFromApi(); // must return Future<void>
      },
      child: Scrollbar(
        thumbVisibility: true, // always show the scrollbar

        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            final post = posts[index];
            return ListTile(
              title: Text(post.title),
              leading: CircleAvatar(child: Text(post.id.toString())),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PostDetailPage(post: post),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
