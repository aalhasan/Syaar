
import 'package:Syaar/entities/utils/Labels.dart';
import 'package:flutter/material.dart';

class loginPage extends StatelessWidget{

  loginPage(Key key, String title):super(key:key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: (
        TextField(
          obscureText: false,
          decoration: InputDecoration(
            hintText: Labels.mobileNumber
          ),
        )
        ),
      )
    );

  }



}