// Iterable in Dart :

// 1. Iterable is a collection of elements that can be accessed sequentially.
// 2. Iterable is an abstract class in Dart.
// 3. Iterable class is implemented by List, Set, and Queue classes.
// 4. Iterable class provides a way to iterate over the elements of a collection.

// Properties of Iterable class :

// 1. length : It returns the number of elements in the collection.
// 2. isEmpty : It returns true if the collection is empty.
// 3. isNotEmpty : It returns true if the collection is not empty.

// Methods of Iterable class :

// 1. forEach() : It is used to iterate over the elements of the collection.
// 2. map() : It is used to create a new collection by applying a function to each element of the collection.
// 3. where() : It is used to create a new collection by filtering the elements of the collection.
// 4. expand() : It is used to create a new collection by applying a function that returns an iterable to each element of the collection.

// Example 1: Iterable class in Dart

void main() {
  Iterable<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  for (var number in numbers) {
    print(number);
  }

  // Using forEach() method
  numbers.forEach((number) => print(number));

  // accessing to the elements of the collection
  print(numbers.elementAt(0)); // 1
  print(numbers.elementAt(1)); // 2

  // length property
  print(numbers.length); // 9
}
