import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart' as Constants;

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.APP_TITLE,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryTextTheme: const TextTheme(
          headline1: TextStyle(color: Colors.white),
          headline3: TextStyle(color: Colors.black),
        ),
      ),
      home: const MyHomePage(title: 'The Fruity Shaker'),
    );
  }
}



class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Home(title: title,);
  }
}
