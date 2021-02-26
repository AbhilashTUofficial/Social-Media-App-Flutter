import 'package:flutter/material.dart';

import 'Screens/export.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"NewsApp",
      theme: ThemeData(
        //primarySwatch: Colors.white,
      ),
      home:Controller(),
    );
  }
}


