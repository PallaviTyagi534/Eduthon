import 'main.dart';

import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Have you often been bothered by feeling down,depressed or hopeless?', false),
    Question('Are you irritable,shy or aggressive?', false),
    Question('Thoughts that you would be better off dead or of hurting yourself in some way?', false),
    Question('Do you prefer to stay at home rather than going out and doing new things?', false),
    Question('Trouble falling or staying asleep or sleeping too much?', false),
    Question('Feeling bad about yourself or that you are a failure or have let yourself or your family down?', false),
    Question(
        'Trouble concentrating on things such as reading the newspaper or watching tv?',
        false),
    Question(
        'Have difficulty in making decisions?',
        false),
    Question(
        'Lost interest in aspects of life that used to be important?',
        false),
    Question(
        'Any psychiatric treatment you have had?',
        false),

  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
//  int getCount()
//  {
//    if(getCorrectAnswer()==false)
//      {
//        count++;
//      }
//    return count;
//  }


  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.
  bool isFinished(){
    if(_questionNumber>=_questionBank.length-1)
    {
      print('Now returning true');
      return true;
    }
    else{

      return false;

    }

  }

  void reset()
  {
    _questionNumber=0;

  }
//TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.


//TODO: Step 4 Part B - Create a reset() method here that sets the questionNumber back to 0.

}
