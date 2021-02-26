import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Watch extends StatefulWidget {
  @override
  _WatchState createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image(
              image: AssetImage("assets/imageLive"
                  ".jpg"),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black38,
            ),
          ),
          Positioned(
            top: 28,
            left: 20,
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: CircleAvatar(
                      radius: 26,
                      backgroundImage: AssetImage("assets/image3.png"),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lelouch Lamperouge",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Britannia",
                        style: TextStyle(color: Colors.white70),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 160),
                    child: Icon(
                      Icons.cancel_outlined,
                      color: Colors.white54,
                      size: 36,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 15,
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width - 80,
              decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 2)),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 15,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.amberAccent[400],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.send,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
