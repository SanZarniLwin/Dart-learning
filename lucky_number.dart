/*1: Lucky Number (Gambling Game)

Write a simple gambling game where the user tries to guess a random number between 1 and 5.

Requirements:

The program should:

Generate a random number between 1 and 5.

Ask the user to input a guess.

Compare the guess to the random number.

Scoring:

If the guess is correct: add 10 points.

Repeat the game in a loop until the user types exit.

Display the score after each round.
*/
import 'dart:math';
import 'dart:io';

void main() {
  luckynumber();
}

void luckynumber() {
  int score = 0;
  print("The lucky number range is 1 to 5 and if you want to quit type exit");
  while (true) {
    stdout.write('Enter your Lucky number : ');
    //int? number = int.parse(stdin.readLineSync()!);
    String? input = stdin.readLineSync();
    if (input == 'exit') {
      print('Game Over! Final score : ' + score.toString());
      break;
    }
    int? number = int.parse(input!);
    var rdm = Random();
    int lucky = rdm.nextInt(5) + 1;
    print('the lucky number is : ' + lucky.toString());

    if (number == lucky) {
      score += 10;
    }
    print('Your score point is : ' + score.toString());
    print('------------------------------');
  }
}

// You need to add error handling everytime you takes some kind of input from the user,
// In this example,  int? number = int.parse(input!); has a lot of problems, if input is somehow null, the program crashes, same with input not being a number and just a random string.
// You should avoid the variables being mutable as much as possible, such as var in var rdm = Random(); use final instead if you need a quick assignment.
