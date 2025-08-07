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
calculate({int numberA = 0, int numberB = 0, String operator = ''}){
  if (operator == '+'){
    return (numberA + numberB);
  } else if (operator == '-'){
    return (numberA - numberB);
  } else if (operator == '*'){
    return (numberA * numberB);
  } else if (operator == '/'){
    return (numberA / numberB);
  } else {
    return ('Invalid operator');
  }
}