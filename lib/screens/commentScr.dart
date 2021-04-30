import 'package:flutter/material.dart';

class AddCmt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add comments'),
        ),
        body: Column(
          children: [
            TextField(
              cursorColor: Colors.green,
              decoration: InputDecoration(),
              onChanged: (newText) {
                // print(newText);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child:
                  ElevatedButton(onPressed: () {}, child: Text('add comment')),
            )
          ],
        ));
  }
}
