import 'package:flutter/material.dart';
import '../screens/commentScr.dart';

class InstaPostCard extends StatefulWidget {
  final String username;
  final String profileImage;
  final String comments;
  final String postImage;
  final int likes;

  InstaPostCard({
    this.username,
    this.profileImage,
    this.comments,
    this.postImage,
    this.likes,
  });

  @override
  _InstaPostCardState createState() => _InstaPostCardState();
}

class _InstaPostCardState extends State<InstaPostCard> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 15,
            ),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: NetworkImage(widget.profileImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  widget.username,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    print('okay');
                  },
                ),
              ],
            ),
          ),
          // end::Row
          // New widget for Column
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onDoubleTap: () {
              setState(() {
                isLiked = !isLiked;
              });
            },
            child: Container(
              width: double.infinity,
              height: 250,
              child: Image.network(
                widget.postImage,
                fit: BoxFit.cover,
              ) 
            ),
          ),
          // end::Image
          // Third Widget of Column
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 40,
            // color: Colors.grey,
            child: Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    child:isLiked? Image.network(
                      'https://image.flaticon.com/icons/png/128/929/929417.png',
                      fit: BoxFit.cover,
                      scale: 0.5,
                    ): Image.network(
                      'https://cdn.iconscout.com/icon/free/png-256/heart-favourite-favorite-love-like-outline-interface-4-14712.png',
                      fit: BoxFit.cover,
                      scale: 0.5,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  //  Comment Icon
                  Container(
                    height: 25,
                    width: 25,
                    child: Image.network(
                      'https://img.pngio.com/chat-comment-instagram-sets-icon-instagram-comment-png-512_512.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  // Send Icon
                  Container(
                    height: 25,
                    width: 25,
                    child: Image.network(
                      'https://image.flaticon.com/icons/png/128/4406/4406119.png',
                      fit: BoxFit.cover,
                    ),
                  ),

                  Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    child: Image.network(
                      'https://t3.ftcdn.net/jpg/03/53/54/64/240_F_353546402_pOnvklktCYPbCFL4nIaYYG1y35ivLHn1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.comments),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      Text(
                        '${widget.likes} likes',
                      )
                    ],
                  ),
                  Text("view all 99 comments"),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: NetworkImage(
                              widget.profileImage,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCmt()));
                        },
                        child: Text('Add your comment..'))
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
