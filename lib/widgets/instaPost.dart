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
          return InstaPostCard(
            username: MOCK_DATA[index]['username'],
            profileImage:MOCK_DATA[index]['profileImage'] ,
            comments:MOCK_DATA[index]['comments'] ,
            likes:MOCK_DATA[index]['likes'] ,
            postImage: MOCK_DATA[index]['postImage'],
          
          );
        },
      ),
    );
  }
}
