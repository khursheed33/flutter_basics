import 'package:flutter/material.dart';
import './screens/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // print("App State Class");
    return MaterialApp(
      title: "Instagram",
      home: InstagramHomepage(),
    );
  }
}
