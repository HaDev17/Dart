//Conditions in dart

// Conditions are used to execute a block of code based on the result of an expression.
// Dart supports the following types of conditions:

// 1.  if statement
// if(condition) {
//   code to be executed if the condition is true
// }

// 2.  if-else statement
// if(condition) {
//   code to be executed if the condition is true
// } else {
//   code to be executed if the condition is false
// }

// 3.  if-else if-else statement
// if(condition1) {
//   code to be executed if condition1 is true
// } else if(condition2) {
//   code to be executed if condition2 is true
// ...
// } else {
//   code to be executed if all conditions are false
// }

// 4.Switch statement, we use the switch statement when we have multiple conditions to check.
// switch(expression) {
//   case value1:
//     code to be executed if the expression is equal to value1
//     break;
//   case value2:
//     code to be executed if the expression is equal to value2
//     break;
//   ...
//  case valueN:
//     code to be executed if the expression is equal to valueN
//     break;
//   default:
//     code to be executed if the expression doesn't match any of the cases
// }

// Examples :

int a = 10;
int b = 20;
String grade = 'A';

void main() {
  if (a > b) {
    print('a is greater than b');
  } else if (a < b) {
    print('a is less than b');
  } else {
    print('a is equal to b');
  }

  // Output: a is less than b

  // Switch statement
  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Good');
      break;
    case 'C':
      print('Fair');
      break;
    case 'D':
      print('Poor');
      break;
    default:
      print('Invalid grade');
  }
}


// If the code is short we can write the if syntax like this :
// if (condition) your code ;
// or :
// condition ? code to be executed if the condition is true : code to be executed if the condition is false;

