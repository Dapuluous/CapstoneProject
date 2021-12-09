import 'package:capstone_project/ui/page_main.dart';
import 'package:flutter/material.dart';
import 'package:capstone_project/ui/page_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShareNRead',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageMain(),
    );
  }
}
