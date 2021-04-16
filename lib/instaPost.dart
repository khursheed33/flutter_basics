import 'package:flutter/material.dart';

class InstaPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Basics"),
      ),
      body: Container(
        width: double.infinity,
        // color: Colors.red,
        height: 400,
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Card(
          elevation: 10,
          child: Column(
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
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "flutterians",
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
                        print("View Button Pressed");
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
              Container(
                width: double.infinity,
                height: 250,
                child: Image.network(
                  'https://images.unsplash.com/photo-1508921340878-ba53e1f016ec?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                  fit: BoxFit.cover,
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
                        child: Image.network(
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
                        height: 30,
                        width: 30,
                        child: Image.network(
                          'https://icons-for-free.com/iconfiles/png/512/interface+multimedia+paper+airplane+plane+send+icon-1320185664126916587.png',
                          fit: BoxFit.cover,
                        ),
                      ),

                      Spacer(),
                      Container(
                        height: 30,
                        width: 30,
                        child: Image.network(
                          'https://www.searchpng.com/wp-content/uploads/2019/02/Save-Icon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
