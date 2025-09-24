import 'package:assessment_app/models/posts.dart';
import 'package:flutter/material.dart';

// Detail page to show full information about a single post
class PostDetailPage extends StatefulWidget {
  final Posts post; // The post object passed from the list page
  const PostDetailPage({super.key, required this.post});

  @override
  State<PostDetailPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  bool isFavorite = false; // track favorite state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post ${widget.post.id}"),
      ), // App bar shows the post ID
      //page body with some padding
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Add the article icon here to show on top of post
                const Icon(
                  Icons.article_outlined,
                  size: 40,
                  color: Colors.blue,
                ),
                const SizedBox(height: 12),

                //post title in large bold text
                Text(
                  widget.post.title,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 10),

                //post body
                Text(
                  widget.post.body,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 10),
                //making userid look beeter using chip and person icon
                Chip(
                  avatar: const Icon(Icons.person, size: 18),
                  label: Text("User ID: ${widget.post.userId}"),
                ),
                // 👇 Action buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isFavorite = !isFavorite; // toggle state
                        });
                      },
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.red : null,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // You can add share functionality here later
                      },
                      icon: const Icon(Icons.share),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
