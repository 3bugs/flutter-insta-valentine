import 'package:insta_valentine/models/comment.dart';

class Post {
  final int id;
  final String author;
  final String image;
  final String content;
  final String authorImage;
  final List<Comment> comments;

  Post({
    required this.id,
    required this.author,
    required this.image,
    required this.content,
    required this.authorImage,
    required this.comments,
  });
}
