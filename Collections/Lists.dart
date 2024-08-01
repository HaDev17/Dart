// Lists in Dart

// A list is an ordered group of objects, so instead of creating a variable for every object,
// you can create a list to store all the objects.
// You can access the elements of a list using the index.
// The index of the first element is 0, the index of the second element is 1, and so on.

// Syntax
// List<type> listName = [element1, element2, element3, ...];
// or
// var listName = [element1, element2, element3, ...];

// Example

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  var myList = [1, "Hello", 3.14, true];
  print(numbers[0]); // Output: 2
  print(myList[1]); // Output: Hello

  // Update elements in a list
  numbers[0] = 10; // Update the first element of the list to 10
  // Add elements to a list
  numbers.add(6); // Add the element 6 to the end of the list
  // Remove elements from a list
  myList.remove("Hello"); // Remove the element "Hello" from the list
  // Remove an element at a specific index
  numbers.removeAt(2); // Remove the element at index 2

  // final and const list :
  final myFinalList = [1, 2, 4, 6];
  const myConstList = [1, 2, 4, 6];
  // The two lists are immutable, but in the final we can add or remove elements
  // myFinalList = [2, 5] // Error
  myFinalList.remove(2); // No error
  // The const list is completely immutable

  // List properties and methods
  // length: Returns the number of elements in the list.
  print(numbers.length); // Output: 5
  // reversed: Returns an iterable object containing the list elements in the reverse order.
  print(numbers.reversed); // Output: (5, 4, 3, 2, 1)
  // isEmpty: Returns true if the list is empty; otherwise, returns false.
  print(numbers.isEmpty); // Output: false
  // isNotEmpty: Returns true if the list is not empty; otherwise, returns false.
  print(numbers.isNotEmpty); // Output: true
  // first and last: Returns the first element in the list respectively the last element.
  print(numbers.first); // Output: 1

  // Iterating over list elements
  for (var i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }
  // Using for-in loop

  for (var number in numbers) {
    print(number);
  }

  // Using forEach() method

  numbers.forEach((number) => print(number));

  // Spreading list elements
  var list1 = [1, 2, 3];
  var list2 = [0, ...list1, 4];
  print(list2);
  // So list2 will be [0, 1, 2, 3, 4]

  // Collection if
  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

  // Collection for
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  print(listOfStrings); // Output: ['#0', '#1', '#2', '#3']
}


// Summary : 
//  Use List<E> class to manage an indexable collection of elements. Lists are zero-based indexing.
//  Use the add() method to append an element to a list.
//  Use the remove() method to remove an element from a list.
//  Use for, for-in, and forEach() to iterate over list elements.
//  Use the final keyword to define a list that can be assigned once.
//  Use the const keyword to define an immutable list.