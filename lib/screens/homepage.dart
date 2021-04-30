import 'package:flutter/material.dart';
import 'package:flutter_basics/MOCK_DATA.dart';
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

// Adding new Post
  void addPost(String name) {
    final Map newPost = {
      'profileImage':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
      'username': 'khursheed',
      'likes': 1202,
      'comments': 'If the given list contains a duplicate, then',
      'postImage':
          'https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    };

    // function to add post
    MOCK_DATA.insert(0, newPost);
    print(name);
    print("Post Added to MOCK_DATA");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Instagram"),
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () => addPost("Khursheed"),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
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
