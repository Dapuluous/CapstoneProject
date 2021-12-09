import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text("About Me Coming Soon"),
        ),
      )
    );
  }
}