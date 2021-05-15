// Started to learn Dart
// Author: Chaudhary Hamdan

import "dart:io";

int prompt(String ques)
{
  print('Question: '+ques+'\nYour Answer:-');
  int ans = int.parse(stdin.readLineSync());
  return ans;
}

class MathQuestion
{
  String question;
  int answer;
  MathQuestion(String ques, int ans)
  {
    this.question = ques;
	this.answer = ans;
  }
}

void main() 
{
  List<MathQuestion> questions = [
    MathQuestion('1 + 1', 2),
    MathQuestion('2 - 7', -5),
    MathQuestion('7 * 8', 56),
    MathQuestion('30 / 5', 6),
    MathQuestion('5 % 2', 1),
  ];

  int score = 0;

  for(MathQuestion Question in questions){
    int answer = prompt(Question.question);
    if(answer == Question.answer){
      print("Correct!");
      score++;
    } else {
      print("Incorrect!");
    }
  }

  print("You got ${score}/${questions.length} correct");

}
