import 'package:flutter/material.dart';

class FlutteriansWrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Widget"),
      ),
      body: Center(
        child: Container(
          color: Colors.lightBlue,
          width: double.infinity,
          child: Wrap(
            verticalDirection: VerticalDirection.down,
            spacing: 10.0,
            children: [
              Container(
                margin: const EdgeInsets.all(6),
                width: 100,
                height: 100,
                color: Colors.orange,
              ),
              Container(
                margin: const EdgeInsets.all(6),
                width: 100,
                height: 100,
                color: Colors.orange,
              ),
              Container(
                margin: const EdgeInsets.all(6),
                width: 100,
                height: 100,
                color: Colors.orange,
              ),
              Container(
                margin: const EdgeInsets.all(6),
                width: 100,
                height: 100,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
