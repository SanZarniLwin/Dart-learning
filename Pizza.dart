/*Pizza Topping Chooser
Problem Statement:

Write a Dart console program that allows the user to build a custom pizza by selecting toppings 
from a given menu. The user can choose multiple toppings, but only one pizza is allowed per run. 
The program calculates and displays the total price based on the base pizza price and selected toppings.

📝 Requirements:
Base pizza price is $5.

Available toppings (with prices):
{
  'Cheese': 1.5,
  'Pepperoni': 2.0,
  'Mushrooms': 1.0,
  'Olives': 1.0,
  'Onions': 0.75,
  'Bacon': 2.5
}
Ask the user to enter toppings one by one. Each time:

Show the current total.

Stop when user types done.

If user enters a topping not on the list, show a warning and skip it.

After finishing, display:

The list of selected toppings.

Base price + topping prices.

Total cost.

Only one pizza allowed per user (i.e., don’t loop for another order).

💡 Sample Console Interaction:
Welcome to Dart Pizza!

Base pizza price: $5.00
Available toppings:
- Cheese: $1.5
- Pepperoni: $2.0
- Mushrooms: $1.0
- Olives: $1.0
- Onions: $0.75
- Bacon: $2.5

Enter a topping to add (type 'done' to finish): Cheese
Cheese added. Current total: $6.50

Enter a topping to add (type 'done' to finish): Pineapple
Sorry, we don't have Pineapple.

Enter a topping to add (type 'done' to finish): Bacon
Bacon added. Current total: $9.00

Enter a topping to add (type 'done' to finish): done

--- Order Summary ---
Base Pizza: $5.00
Toppings:
- Cheese: $1.50
- Bacon: $2.50
Total Price: $9.00
Thanks for ordering!
*/
import 'dart:io';
void main(){
    OrderingPizza();
}

void OrderingPizza(){
    print('');
    print('Welcome to Dart Pizza!\n');
    
    print('Base pizza price: \$5.00');
    print('Available toppings:');
    print('- Cheese: \$1.5');
    print('- Pepperoni: \$2.0');
    print('- Mushrooms: \$1.0');
    print('- Olives: \$1.0');
    print('- Onions: \$0.75');
    print('- Bacon: \$2.5\n');

    double Pizzaprice = 5.00;
    List<String> toppingsAdded = [];
    while (true){
        stdout.write('Enter a topping to add (type \'done\' to finish): ');
        String? input = stdin.readLineSync();
        if (input == 'Cheese'){
            print((input ?? 'Unknown')+' added. Current total: \$'+(Pizzaprice = 1.5+Pizzaprice).toString()+'\n');
            toppingsAdded.add('Cheese: \$1.50');
        } else if (input == 'Pepperoni'){
            print((input ?? 'Unknown')+' added. Current total: \$'+(Pizzaprice = 2.0+Pizzaprice).toString()+'\n');
            toppingsAdded.add('Pepperoni: \$1.50');
        } else if (input == 'Mushrooms'){
            print((input ?? 'Unknown')+' added. Current total: \$'+(Pizzaprice = 1.0+Pizzaprice).toString()+'\n');
            toppingsAdded.add('Mushrooms: \$1.50');
        } else if (input == 'Olives'){
            print((input ?? 'Unknown')+' added. Current total: \$'+(Pizzaprice = 1.0+Pizzaprice).toString()+'\n');
            toppingsAdded.add('Olives: \$1.50');
        } else if (input == 'Onions'){
            print((input ?? 'Unknown')+' added. Current total: \$'+(Pizzaprice = 0.75+Pizzaprice).toString()+'\n');
            toppingsAdded.add('Onions: \$1.50');
        } else if (input == 'Bacon'){
            print((input ?? 'Unknown')+' added. Current total: \$'+(Pizzaprice = 2.5+Pizzaprice).toString()+'\n');
            toppingsAdded.add('Bacon: \$1.50');
        } else if (input == 'done'){
            print('');
            print('--- Order Summary ---');
            print('Base Pizza: \$5.00');
            print('Toppings:');
            for (var topping in toppingsAdded){
                print('-'+topping);
            }
            print('Total Price: \$'+ Pizzaprice.toString());
            print('Thanks for ordering!');
            break;
        } else {
            print('Sorry, we don\'t have '+(input ?? 'Unknown')+'.\n');

        }
    }
    
}