/*Rock-Paper-Scissors Game
Requirements:
Choices:

The valid inputs are: rock, paper, or scissors.

Gameplay:

Prompt the user to enter their choice.

The computer randomly selects one of the three options.

Compare both choices and determine the winner based on the rules:

Rock beats Scissors

Scissors beats Paper

Paper beats Rock

Same choice → it's a draw

Output:
Show both the user's and the computer's choices.

Display who wins: the user, the computer, or if it's a draw.

Loop:
Allow the game to be played repeatedly until the user types exit.

Example Console Interaction:
Enter rock, paper, or scissors (or 'exit' to quit): rock
Computer chose: paper
You lose! Paper beats rock.
*/
import 'dart:math';
import 'dart:io';

void main() {
  game();
}

void game() {
  print('');
  print('This is Rock, Paper, Scissor game.\n');
  List<String> options = ['Rock', 'Paper', 'Scissors'];
  while (true) {
    stdout.write('Enter Rock, Paper, or Scissors (or \'Exit\' to quit): ');
    String? input = stdin.readLineSync();
    if (input == null) continue;
    String player = input[0].toUpperCase() + input.substring(1).toLowerCase();

    if (player == 'Exit') {
      print('Well played.See u.');
      break;
    }
    if (!options.contains(player)) {
      print('Invalid input. Please enter Rock, Paper, or Scissors.\n');
      continue;
    }
    var rng = Random();
    String? computer = options[rng.nextInt(options.length)];
    print('The computer chooses : ' + computer);
    if (player == computer) {
      print('It\'s draw.\n');
    } else if ((player == 'Rock' && computer == 'Scissors') ||
        (player == 'Paper' && computer == 'Rock') ||
        (player == 'Scissors' && computer == 'Paper')) {
      print('You win the Game! ' +
          (player ?? '') +
          ' beats ' +
          (computer ?? '') +
          '.\n');
    } else {
      print('Computer wins the Game! ' +
          (computer ?? '') +
          ' beats ' +
          (player ?? '') +
          '.\n');
    }
  }
}
// You need to account for inputs other than Rock, Paper, Scissors from the player. Right now, you can input anything and it will show the computer beats that.