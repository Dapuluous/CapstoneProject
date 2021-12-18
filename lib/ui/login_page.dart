import 'package:flutter/material.dart';
import 'package:capstone_project/ui/ui_login/Header.dart';
import 'package:capstone_project/ui/ui_login/InputWrapper.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter, colors: [Colors.cyan, Colors.black]),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 80,),
            Header(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60)
                    )
                ),
                child: InputWrapper(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
