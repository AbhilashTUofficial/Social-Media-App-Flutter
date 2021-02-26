import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:social_media_app/Data/recentList.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            height: 320,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              //physics: ClampingScrollPhysics(),
              itemCount: recentList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(recentList[index].imgUrl),
                              fit: BoxFit.fill,
                            ),
                          ),
                          width: MediaQuery.of(context).size.width - 40,
                          height: 240,
                          margin: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.grey[300],
                              offset: Offset(2, 2),
                              blurRadius: 5,
                            ),
                          ]),
                        ),
                        Positioned(
                          top: 210,
                          left: MediaQuery.of(context).size.width - 140,
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (recentList[index].platform == "insta")
                                  Text(
                                    "Instagram",
                                    style: TextStyle(color: Colors.pink),
                                  ),
                                if (recentList[index].platform == "fb")
                                  Text(
                                    "Facebook",
                                    style: TextStyle(color: Colors.blueAccent),
                                  ),
                                if (recentList[index].platform == "twit")
                                  Text(
                                    "Twitter",
                                    style: TextStyle(color: Colors.lightBlue),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 36,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue[100],
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                ),
                              ]),
                          child: Text(
                            "View",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: Text(
                                "Lorem ipsum dolor",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.blueAccent),
                              ),
                            ),
                            Container(
                              child: Text(
                                "consectetur adipiscing elit",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                );
              },
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 30),
                    child: Text(
                      "Recommended",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 30),
                    child: Text(
                      "See all",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 240,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[300],
                              offset: Offset(2, 2),
                              blurRadius: 5,
                            ),
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: AssetImage(recentList[4].imgUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 6),
                          width: 140,
                          height: 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[300],
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                ),
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(recentList[3].imgUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 6),
                          width: 140,
                          height: 103,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[300],
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                ),
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: AssetImage(recentList[2].imgUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      width: 140,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[300],
                              offset: Offset(2, 2),
                              blurRadius: 5,
                            ),
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: AssetImage(recentList[1].imgUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 240,
                      height: 200,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300],
                          offset: Offset(2, 2),
                          blurRadius: 5,
                        ),
                      ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: AssetImage(recentList[0].imgUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
