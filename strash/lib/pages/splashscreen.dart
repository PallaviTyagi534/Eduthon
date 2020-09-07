import 'dart:async';

import 'package:flutter/material.dart';
import 'package:strash/pages/instructions.dart';
import 'package:strash/pages/quizpage.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Instructions())));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffcffffe),
        body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               Image.asset("images/motivation.png",height: 180,width: 180,),
            SizedBox(height: 10,),
            Text("sTrash",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
               Text("Trash your stress in seconds",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

             ],

           ),
        ),
      ),
    );
  }
}
