
class CalculateBrain{
  CalculateBrain({this.count});
  final int count;

  String getResult() {
    if (count >= 0&&count<=5) {
      return "Why don't you recollect your all old memories?";
    } else if (count >5&&count<7) {
      return "keep your self busy. Tried some new skills during pandemic?";
    }
    else {
      return 'Just chill and thrill!!';
    }
  }
  String getInterpretation(){
    if( count >= 0&&count<=5){
      return 'Give yourself another day, another chance. You will find your courage eventually. Don’t give up on yourself just yet.';
    }else if(count >5&&count<7){
      return'Maybe you have to know the darkness before you can appreciate the light.';
    }
    else {
      return 'The greater the difficulty, the more glory in surmounting it. Skillful pilots gain their reputation from storms and tempests.';
    }
  }
}