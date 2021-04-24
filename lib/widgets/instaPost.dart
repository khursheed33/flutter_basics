import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/instaPostCard.dart';
import '../MOCK_DATA.dart';

class InstaPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // color: Colors.red,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: ListView.builder(
        itemCount: MOCK_DATA.length,
        itemBuilder: (BuildContext ctx, int index) {
          return GestureDetector(
            onTap: () {
              print("Post Item: $index");
            },
            child: InstaPostCard(
              MOCK_DATA[index]['username'],
              MOCK_DATA[index]['profileImage'],
              MOCK_DATA[index]['comments'],
              MOCK_DATA[index]['postImage'],
              MOCK_DATA[index]['likes'],
            ),
          );
        },
      ),
    );
  }
}
// Testing for Sunny
