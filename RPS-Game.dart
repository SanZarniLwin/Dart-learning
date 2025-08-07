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
void main(){
    game();
}
void game(){
    print('');
    print('This is Rock, Paper, Scissor game.\n');
    while (true){
        stdout.write('Enter Rock, Paper, or Scissors (or \'exit\' to quit): ');
        String? player = stdin.readLineSync();
        if (player == 'exit'){
            print('Well played.See u');
            break;
        }
        var rng = Random();
        List<String> options = ['Rock','Paper','Scissors'];
        String? computer = options[rng.nextInt(options.length)];
        print('The computer chooses : '+computer);
        if (player == computer){
            print('It\'s draw.\n');
        } else if (
            (player == 'Rock' && computer == 'Scissors') ||
            (player == 'Paper' && computer == 'Rock') ||
            (player == 'Scissors' && computer == 'Paper') 
        ){
            print('You win the Game! '+(player ?? '')+' beats '+(computer ?? '')+'.\n');
        } else {
            print('Computer wins the Game! '+(computer ?? '')+' beats '+(player ?? '')+'.\n');
        }
    }
    
}