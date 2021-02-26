import 'package:flutter/material.dart';
import 'package:social_media_app/Data/recentList.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300],
                          offset: Offset(2, 2),
                          blurRadius: 5,
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/image.png"),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              width: MediaQuery.of(context).size.width - 80,
              height: 80,
              decoration: BoxDecoration(),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recentList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      radius: 34,
                      backgroundImage: AssetImage(recentList[index].imgUrl),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        Column(
          children: [
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
              margin: EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width - 40,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(2, 2),
                      blurRadius: 5,
                    ),
                  ]),
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20, right: 5),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(recentList[3].imgUrl),
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(recentList[4].imgUrl),
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.exposure_plus_2_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 180,
                    ),
                    child: Icon(
                      Icons.thumb_up,
                      color: Colors.lightGreen,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width - 40,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(2, 2),
                      blurRadius: 5,
                    ),
                  ]),
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20, right: 5),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(recentList[1].imgUrl),
                      )),

                  Container(
                    margin: EdgeInsets.only(
                      left: 280,
                    ),
                    child: Icon(
                      Icons.thumb_down,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width - 40,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(2, 2),
                      blurRadius: 5,
                    ),
                  ]),
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20, right: 5),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(recentList[3].imgUrl),
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(recentList[4].imgUrl),
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.exposure_plus_1_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 180,
                    ),
                    child: Icon(
                      Icons.comment,
                      color: Colors.lightGreen,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
