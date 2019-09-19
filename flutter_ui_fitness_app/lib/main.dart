import 'package:flutter/material.dart';
import 'package:flutter_ui_9/pages/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xff6d3fff),
        accentColor: Color(0xff233c63),
        fontFamily: 'Poppins',
      ),
      home: WelcomeScreen(),
    );
  }
}
