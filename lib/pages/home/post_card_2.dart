import 'package:flutter/material.dart';

// ignore_for_file: avoid_print

class PostCard2 extends StatelessWidget {
  PostCard2({
    Key? key,
    required this.id,
    required this.author,
    required this.image,
    required this.content,
    required this.authorImage,
    required this.comments,
    //required this.postComment,
  }) : super(key: key);

  final int id;
  final String author;
  final String image;
  final String content;
  final String authorImage;
  final List comments;

  //final Function postComment;

  bool _liked = false;
  final TextEditingController _commentController = TextEditingController();

  Widget _buildComments(BuildContext context) {
    List<Widget> commentList = [];

    for (int i = 0; i < commentList.length; i++) {
      commentList.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Row(
            children: [
              Expanded(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    //style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: comments[i]["author"],
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const TextSpan(text: "  "),
                      TextSpan(
                        text: comments[i]["comment"],
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1?.color,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: commentList,
    );
  }

  /*void addComment(String comment) {
    widget.postComment(widget.id, comment, "Khanh Nguyen");
    _commentController.clear();
  }*/

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 4, 8, 4),
                  child: authorImage != ""
                      ? CircleAvatar(
                          backgroundImage: NetworkImage(authorImage),
                          backgroundColor: Colors.pink.shade200,
                          radius: 22,
                          onBackgroundImageError: (exception, context) {
                            throw ('Image Cannot be loaded');
                          },
                        )
                      : CircleAvatar(
                          backgroundColor: Colors.pink.shade800,
                          child: const Text(
                            "PL",
                            style: TextStyle(color: Colors.white),
                          ),
                          radius: 22,
                        ),
                ),
                Expanded(
                  child: Text(
                    author,
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
            child: image != ""
                ? GestureDetector(
                    onDoubleTap: () => {
                      /*setState(() {
                        _liked = true;
                      })*/
                    },
                    /*child: Image(
                      image: NetworkImage(widget.image),
                    ),*/
                    child: Image.network(image),
                  )
                : const Divider(),
          ),
          const SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
            child: Text(
              content,
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
                    /*setState(() {
                      _liked = !_liked;
                    })*/
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
