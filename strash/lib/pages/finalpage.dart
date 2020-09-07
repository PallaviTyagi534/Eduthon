import 'package:flutter/material.dart';
import 'package:strash/pages/instructions.dart';
import 'package:url_launcher/url_launcher.dart';

class Final extends StatelessWidget {
  const Final({Key key, this.resultText, this.interpretation}) : super(key: key);



  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffcffffe),
        appBar: AppBar(
          backgroundColor: Color(0xff00416d),

          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Text('Your sTrashBoard'),
              ]
          ),
          actions: <Widget>[

            PopupMenuButton<String>(
              onSelected: handleClick,
              itemBuilder: (BuildContext context) {
                return {'Your Helpline'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],

        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/motivation.png",height: 180,width: 180,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(resultText.toUpperCase(),style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color(0xff00416d)),),
              ),
              SizedBox(
                height: 10,
              ),
              Text(interpretation,
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xff00416d)),
                textAlign: TextAlign.center,),
              RaisedButton(
                color: Color(0xffed6663),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Trash your stress again',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xff00416d),
                    ),
                  ),
                ),
                onPressed: () {
                  //The user picked false.
                  Navigator.push( context, MaterialPageRoute(builder: (context) => Instructions()), );
                },
              ),

            ],

          ),
        ),
      ),
    );
  }
  void handleClick(String value) {
    switch (value) {
      case 'Your Helpline': launch("tel://09820466726 ");
      break;

    }
  }
}
