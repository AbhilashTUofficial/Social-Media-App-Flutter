import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: Container(
        margin: EdgeInsets.only(top: 35, left: 10),
        child: Text(
          "Social Media App",
          style: TextStyle(fontSize: 27, color: Colors.black87),
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(top: 20, right: 20),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/image.png"),
            radius: 24,
          ),
        )
      ],
    );
  }
}
