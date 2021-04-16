import 'package:flutter/material.dart';

class ToolTipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tool Tip Widget"),
      ),
      body: Center(
        child: Tooltip(
          waitDuration: Duration(seconds: 3),
          showDuration: Duration(seconds: 1),
          preferBelow: true,
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          message: "The Tool Tip Text",
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
