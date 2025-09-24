class Posts {
  final int userId;
  final int id;
  final String title;
  final String body;

// Constructor to create a Post object
  Posts({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
    required List data,
  });

// Factory constructor: creates a Post object from JSON data and map each from json
  factory Posts.fromJson(Map<String, dynamic> json) {
    return Posts(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
      data: [],
    );
  }
}
