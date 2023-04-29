import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'container.dart';
import 'icon.dart';
import 'inputpage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(


        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

