import 'package:assessment_app/models/posts.dart';
import 'package:flutter/material.dart';

class PostDetailPage extends StatelessWidget {
  final Posts post;
  const PostDetailPage({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Post ${post.id}")),
      backgroundColor: Color.fromARGB(255, 246, 228, 249),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.title,

                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 10),
              Text(post.body, style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 10),
              Text(
                "User ID: ${post.userId}",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
