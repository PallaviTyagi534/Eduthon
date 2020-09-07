import 'package:flutter/material.dart';
import 'package:strash/pages/quizpage.dart';

class Instructions extends StatefulWidget {
  @override
  _InstructionsState createState() => _InstructionsState();
}

class _InstructionsState extends State<Instructions> {
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
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('"Screening for depression is just the first step to helping you get better. Depression treatments work — so answer the questions as honestly as you can, and don’t be afraid to ask for help."',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color(0xff00416d)),),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                color: Color(0xffed6663),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Trash your stress',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xff00416d),
                    ),
                  ),
                ),
                onPressed: () {
                  //The user picked false.
                  Navigator.push( context, MaterialPageRoute(builder: (context) => QuizPage()), );
                },
              ),

            ],

          ),
        ),
      ),
    );
  }
}
