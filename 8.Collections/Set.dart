// Sets in Dart

// A set is an unordered collection of unique elements. In Dart, you can create a set using the Set class.

// Syntax
// Set<type> setName = {element1, element2, element3, ...};
// or
// var setName = {element1, element2, element3, ...};

// Example

void main() {
  Set<int> numbers = {1, 2, 3, 4, 5};
  print(numbers); // Output: {1, 2, 3, 4, 5}
  // Accessing an element by index
  print(numbers.elementAt(1)); // Output: 2

  // Add elements to a set
  numbers.add(6); // Add the element 6 to the set
  // if you add a duplicate element to a set, it will be ignored.
  numbers.add(1); // The element 1 is already in the set, so it will be ignored
  // Adding multiple elements to a set
  numbers.addAll({7, 8, 9});
  // Remove elements from a set
  numbers.remove(1); // Remove the element "Hello" from the set

  // Set properties and methods
  // length: Returns the number of elements in the set.
  print(numbers.length); // Output: 6
  // isEmpty: Returns true if the set is empty; otherwise, returns false.
  print(numbers.isEmpty); // Output: false
  // isNotEmpty: Returns true if the set is not empty; otherwise, returns false.
  print(numbers.isNotEmpty); // Output: true

  // Checking the existence of elements
  print(numbers.contains(19)); // Output: false

  // Intersection of two sets
  Set<int> set1 = {1, 2, 3, 4, 5};
  Set<int> set2 = {3, 4, 5, 6, 7};
  var intersec = set1.intersection(set2);
  print(intersec); // Output: {3, 4, 5}

  // Union of two sets
  var union = set1.union(set2);
  print(union); // Output: {1, 2, 3, 4, 5, 6, 7}

  // Iterating over set elements
  for (var number in numbers) {
    print(number);
  }
  // Using forEach() method
  numbers.forEach((number) => print(number));
}
