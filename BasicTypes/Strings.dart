//Strings in dart

// In Dart, a string is a sequence of UTF-16 code units. You can use either single or double quotes to create a string.

// For example:
// you can declare a string variable like this:
String text = 'my text';

// or like this:
var s1 = 'Single quotes work well for string literals.';
var s2 = "Double quotes work just as well.";

// to use ' or " in a string you can use the escape character \.
var s3 = 'It\'s easy to escape the string delimiter.';

var s4 = '''
You can create
multi-line strings like this one.
''';

// if you want insert a variable in a string you can use ${var} inside the string.

var name = 'Habib';
var age = 21;
var s5 = ' Hello, my name is ${name}, I\'m ${age} years old.';

// You can use \n for a new line.
var s = 'In a raw string, not even \n gets special treatment.';

// concatenation
// we can concatenate strings using the + operator.
var s6 = s1 + s2;

// you can check if a string is empty or not using the isEmpty property, or you can use isNotEmpty
var s7 = '';
var check = s7.isEmpty; //true

// you can get the length of a string using the length property.
var s8 = 'Hello';
var length = s8.length; //5

// you can access a character in a string using the [] operator.
var firstChar = s8[0]; //H

// you can search for a substring in a string using the contains method.
var s9 = 'Hello, World!';
var contains = s9.contains('World'); //true

// you can get the index of a substring in a string using the indexOf method.
var index = s9.indexOf('World'); //7

// uppercase and lowercase
// you can convert a string to uppercase using the toUpperCase method, and to lowercase using the toLowerCase method.
var upper = s9.toUpperCase(); //HELLO, WORLD!
var lower = s9.toLowerCase(); //hello, world!

// you can trim a string using the trim method.
var s10 = '  Hello, World!  ';
var trimmed = s10.trim(); //Hello, World!

// you can split a string into a list of substrings using the split method.
var s11 = 'Hello, World!';
var parts = s11.split(','); //['Hello', ' World!']

// you can replace a substring in a string using the replaceAll method.
var replaced = s9.replaceAll('World', 'Dart'); //Hello, Dart!

// you can check if a string starts or ends with a substring using the startsWith and endsWith methods.

// This is the most used functions in dart strings, there are more functions that you can use,
// you can check the dart documentation for more information.

// Convert a string to an integer and integer to a string

var str = '123';
var num = int.parse(str); //123

var num2 = 123;
var str2 = num2.toString(); //'123'
