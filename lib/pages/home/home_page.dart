import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_valentine/models/comment.dart';
import 'package:insta_valentine/models/post.dart';
import 'package:insta_valentine/pages/home/post_card.dart';

// ignore_for_file: avoid_print

final List<Post> _posts = [
  Post(
    id: 1,
    author: "Promlert Lovichit",
    image:
        "https://s.isanook.com/ca/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL2NhLzAvdWQvMTg2LzkzMTgyMi92YWxlbnRpbmVzLWRheS5qcGc=.jpg",
    content:
        "วันนักบุญวาเลนไทน์ หรือเรียก วันวาเลนไทน์ ตรงกับวันที่ 14 กุมภาพันธ์ของทุกปี วันวาเลนไทน์มีการเฉลิมฉลองในหลายประเทศทั่วโลก ส่วนใหญ่เป็นประเทศทางตะวันตก แม้จะยังเป็นวันทำงานในทุกประเทศเหล่านั้นก็ตาม",
    authorImage: "",
    comments: [
      Comment(
        author: "Mark Zuckerberg",
        comment: "Happy Valentine's Day!",
      ),
      Comment(
        author: "Prayuth Chan",
        comment: "Hello",
      ),
    ],
  ),
  Post(
    id: 2,
    author: "Mark Zuckerberg",
    image:
        "https://imgk.timesnownews.com/story/Valentines_day_images_feature_0.png?tr=w-600,h-450,fo-auto",
    content:
        "The week of love is already here. People all around the world are spending quality time with their loved ones. Though Valentine's Day falls on February 14, love is celebrated for a week.",
    authorImage: "mark_zuck.jpg",
    comments: [
      Comment(
        author: "Promlert Lovichit",
        comment: "Happy Valentine's Day!",
      ),
    ],
  ),
  Post(
    id: 3,
    author: "Prayuth Chan",
    image: "https://ichef.bbci.co.uk/images/ic/976xn/p096pn3l.jpg",
    content:
        "It's the day when people show their affection for another person or people by sending cards, flowers or chocolates with messages of love.",
    authorImage: "prayuth.jpg",
    comments: [
      Comment(
        author: "Mark Zuckerberg",
        comment: "I love it!",
      ),
      Comment(
        author: "Promlert Lovichit",
        comment: "^_^",
      ),
    ],
  ),
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    print('ความกว้างจอ: $screenWidth');

    return Scaffold(
      appBar: AppBar(
        title: const Text('InstaValentine'),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(screenWidth > 600 ? 100.0 : 8.0),
          itemCount: _posts.length + 1,
          itemBuilder: (BuildContext context, int index) {
            return (index == 0)
                ? Text(
                    'VALENTINE\'S DAY',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quintessential(fontSize: 40.0),
                  )
                : PostCard(post: _posts[index - 1]);
          }),
    );
  }
}
