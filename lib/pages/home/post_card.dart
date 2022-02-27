import 'package:flutter/material.dart';
import 'package:insta_valentine/models/comment.dart';
import 'package:insta_valentine/models/post.dart';

// ignore_for_file: avoid_print

class PostCard extends StatefulWidget {
  const PostCard({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  State<PostCard> createState() => _PostCard();
}

class _PostCard extends State<PostCard> {
  bool _liked = false;
  final TextEditingController _commentController = TextEditingController();

  Widget _buildComments(BuildContext context) {
    return Column(
      children: widget.post.comments
          .map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
              child: Row(
                children: [
                  Expanded(
                    child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        //style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(
                            text: item.author,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          const TextSpan(text: "  "),
                          TextSpan(
                            text: item.comment,
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1?.color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 4, 8, 4),
                  child: widget.post.authorImage != ""
                      ? CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/${widget.post.authorImage}'),
                          backgroundColor: Colors.pink.shade200,
                          radius: 22,
                          onBackgroundImageError: (exception, context) {
                            throw ('Image Cannot be loaded');
                          },
                        )
                      : CircleAvatar(
                          backgroundColor: Colors.pink.shade800,
                          child: Text(
                            widget.post.author.split(" ")[0].substring(0, 1) +
                                widget.post.author
                                    .split(" ")[1]
                                    .substring(0, 1),
                            style: const TextStyle(color: Colors.white),
                          ),
                          radius: 22,
                        ),
                ),
                Expanded(
                  child: Text(
                    widget.post.author,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () => {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 0,
            ),
            child: widget.post.image != ""
                ? GestureDetector(
                    onDoubleTap: () => {
                      setState(() {
                        _liked = true;
                      })
                    },
                    /*child: Image(
                      image: NetworkImage(widget.image),
                    ),*/
                    child: Image.network(
                      widget.post.image,
                      fit: BoxFit.fitWidth,
                    ),
                  )
                : const Divider(),
          ),
          const SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
            child: Text(
              widget.post.content,
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(height: 10.0),
          _buildComments(context),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => {
                    setState(() {
                      _liked = !_liked;
                    })
                  },
                  icon: _liked
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.pinkAccent,
                        )
                      : const Icon(
                          Icons.favorite_outline,
                        ),
                ),
                Expanded(
                  child: TextField(
                    controller: _commentController,
                    decoration: InputDecoration.collapsed(
                      //isDense: true,
                      hintText: "Add a comment...",
                      hintStyle:
                          TextStyle(color: Colors.pink[100], fontSize: 14),
                    ),
                    //onSubmitted: (String text) => {addComment(text)}
                    onSubmitted: (text) {
                      setState(() {
                        widget.post.comments.add(
                          Comment(
                            author: 'Flutter',
                            comment: text,
                          ),
                        );
                        _commentController.clear();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
