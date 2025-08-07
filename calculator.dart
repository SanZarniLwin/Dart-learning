// Write a function named calculate that takes numberA, numberB and operator as named parameters that returns the result of the operation:
// '+' → addition
// '-' → subtraction
// '*' → multiplication
// '/' → division
// If the operator is not valid, return "Invalid operator"
void main() {
  print(calculate(numberA: 10, numberB: 5, operator: '+')); // 15
  print(calculate(numberA: 10, numberB: 5, operator: '-')); // 5
  print(calculate(numberA: 10, numberB: 5, operator: '*')); // 50
  print(calculate(numberA: 10, numberB: 5, operator: '/')); // 2.0
  print(calculate(numberA: 10, numberB: 5, operator: '%')); // Invalid operator
}

calculate({int numberA = 0, int numberB = 0, String operator = ''}) {
  switch (operator) {
    case '+':
      return numberA + numberB;
    case '-':
      return numberA - numberB;
    case '*':
      return numberA * numberB;
    case '/':
      return numberA / numberB;
    default:
      return 'Invalid operator';
  }
}
//REVIEW AND FEEDBACK

// Please define return type from the functions, in this case you can return num type for function calculate
// You can also try to use switch cases in this case since it is more readable and much cleaner code as a result.( more of a suggestion )
// You don't need parentheses () in return statements, you can put it but you don't need it.