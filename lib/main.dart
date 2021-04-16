import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Basics",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Basics"),
        ),
        body: InstaPost(),
      ),
    );
  }
}

class InstaPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      size: 45,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    //  Comment Icon
                    Image.network(
                      'https://image.flaticon.com/icons/png/512/25/25360.png',
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    // Send Icon
                    Image.network(
                      'https://img.icons8.com/ios/452/sent.png',
                      fit: BoxFit.cover,
                    ),

                    Spacer(),
                    Icon(
                      Icons.save_alt,
                      color: Colors.black,
                      size: 40,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}