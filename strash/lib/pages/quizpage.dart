import 'package:flutter/material.dart';
import 'package:strash/pages/finalpage.dart';
import 'package:strash/quiz_brain.dart';
import 'package:strash/sTrashBrain.dart';
QuizBrain quizBrain = QuizBrain();
class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  int count=0;

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();
    if (correctAnswer==false) {
      count++;

    }
    setState(() {
      //TODO: Step 4 - Use IF/ELSE to check if we've reached the end of the quiz. If true, execute Part A, B, C, D.
      if (quizBrain.isFinished() == true) {
//        Alert(
//          context: context,
//          title: 'Finished!',
//          desc: 'You\'ve reached the end of the quiz ' + count.toString() +
//              "/10",
//
//
//        ).show();
        print(count);
        CalculateBrain calc =CalculateBrain(count:count);
        Navigator.push( context, MaterialPageRoute(builder: (context) => Final(

      resultText: calc.getResult(),
      interpretation: calc.getInterpretation(),

        )));
        quizBrain.reset();
        scoreKeeper = [];
        count=0;
        print(count);
      }
      else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.fiber_manual_record,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.fiber_manual_record,
            color: Colors.green,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xffcffffe),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      quizBrain.getQuestionText(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Color(0xff00416d),
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red)
                    ),
                    color: Color(0xffffa372),
                    child: Text(
                      'YES',
                      style: TextStyle(
                        color: Color(0xff00416d),
                        fontSize: 30.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: () {
                      //The user picked true.
                      checkAnswer(true);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red)
                    ),
                    color: Color(0xffed6663),
                    child: Text(
                      'NO',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Color(0xff00416d),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: () {
                      //The user picked false.
                      checkAnswer(false);
                    },
                  ),
                ),
              ),
              Row(
                children: scoreKeeper,
              )
            ],
          ),
        ),
      ),
    );
  }
}
