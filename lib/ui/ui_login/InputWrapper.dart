import 'package:capstone_project/ui/page_main.dart';
import 'package:flutter/material.dart';
import 'InputField.dart';

class InputWrapper extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: InputField(),
          ),
          SizedBox(height: 40,),
          Text("Forgot Password", style: TextStyle(color: Colors.grey),),
          SizedBox(height: 40,),

          ElevatedButton(
            child: const Text('Login'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageMain()),
              );
            },
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(250, 50), primary: Colors.cyan,
            ),
          ),
        ],
      ),
    );
  }
}