import 'package:capstone_project/Login_Page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Share N Read',
      theme: ThemeData(),
      home: LoginPage(),
    );
  }
}