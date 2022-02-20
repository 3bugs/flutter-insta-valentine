import 'package:flutter/material.dart';
import 'package:insta_valentine/pages/home/post_card.dart';

final List _posts = [
  {
    "id": 1,
    "author": "Promlert Lovichit",
    "image":
        "https://s.isanook.com/ca/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL2NhLzAvdWQvMTg2LzkzMTgyMi92YWxlbnRpbmVzLWRheS5qcGc=.jpg",
    "content":
        "วันนักบุญวาเลนไทน์ หรือเรียก วันวาเลนไทน์ ตรงกับวันที่ 14 กุมภาพันธ์ของทุกปี วันวาเลนไทน์มีการเฉลิมฉลองในหลายประเทศทั่วโลก ส่วนใหญ่เป็นประเทศทางตะวันตก แม้จะยังเป็นวันทำงานในทุกประเทศเหล่านั้นก็ตาม",
    "authorImage": "dash.png",
    "comments": [
      {
        "author": "Mark Zuckerberg",
        "comment": "Happy Valentine's Day!",
      },
      {
        "author": "Prayuth Chan",
        "comment": "Hello",
      },
    ],
  },
  {
    "id": 2,
    "author": "Mark Zuckerberg",
    "image":
        "https://imgk.timesnownews.com/story/Valentines_day_images_feature_0.png?tr=w-600,h-450,fo-auto",
    "content":
        "The week of love is already here. People all around the world are spending quality time with their loved ones. Though Valentine's Day falls on February 14, love is celebrated for a week.",
    "authorImage": "mark_zuck.jpg",
    "comments": [
      {
        "author": "Promlert Lovichit",
        "comment": "Happy Valentine's Day!",
      },
    ],
  },
  /*{
    "id": 3,
    "author": "Bill Gates",
    "image":
        "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2018/10/22/0/FNK_HEART-LASAGNA-BUNDT-H_s4x3.jpg.rend.hgtvcom.441.331.suffix/1540223574723.jpeg",
    "content": "Special Recipes for a Valentine’s Day Dinner at Home",
    "authorImage":
        "https://i.insider.com/61ae39f535814a00195ea683?width=1136&format=jpeg",
    "comments": [
      {
        "author": "Craig's Dog",
        "comment": "WOOF!",
      }
    ],
  },*/
  {
    "id": 4,
    "author": "Prayuth Chan",
    "image": "https://ichef.bbci.co.uk/images/ic/976xn/p096pn3l.jpg",
    "content":
        "It's the day when people show their affection for another person or people by sending cards, flowers or chocolates with messages of love.",
    "authorImage": "prayuth.jpg",
    "comments": [
      {
        "author": "Mark Zuckerberg",
        "comment": "I love it!",
      },
      {"author": "Promlert Lovichit", "comment": "^_^"}
    ],
  },
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InstaValentine'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: _posts.length,
          itemBuilder: (BuildContext context, int index) {
            return PostCard(
              id: _posts[index]["id"],
              author: _posts[index]["author"],
              image: _posts[index]["image"],
              content: _posts[index]["content"],
              authorImage: _posts[index]["authorImage"],
              comments: _posts[index]["comments"],
              //postComment: postComment,
            );
          }),
    );
  }
}
