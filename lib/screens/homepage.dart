import 'package:flutter/material.dart';
import '../widgets/instaPost.dart';

class InstagramHomepage extends StatefulWidget {
  @override
  _InstagramHomepageState createState() => _InstagramHomepageState();
}

class _InstagramHomepageState extends State<InstagramHomepage> {
  int _currentIndex = 0;

  final List<Widget> tabs = [
    InstaPost(),
    Center(child: Text('Likes')),
    Center(child: Text('okay')),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Instagram"),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Like'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
      ),
    );
  }
}
