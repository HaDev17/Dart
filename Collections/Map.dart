// Maps in dart

// Map is a collection of key-value pairs where each key is unique.

// In Dart, you can create a map using the Map class.

// Syntax
// Map<keyType, valueType> mapName = {key1: value1, key2: value2, key3: value3, ...};
// or
// var mapName = {key1: value1, key2: value2, key3: value3, ...};

// Example

void main() {
  Map<String, int> fruits = {'apple': 1, 'banana': 2, 'orange': 3};
  print(fruits); // Output: {apple: 1, banana: 2, orange: 3}

  // Accessing a value by key
  print(fruits['apple']); // Output: 1

  // Adding a key-value pair to the map
  fruits['mango'] = 4;
  print(fruits); // Output: {apple: 1, banana: 2, orange: 3, mango: 4}

  // Updating a value in the map
  fruits['apple'] = 5;

  // Removing a key-value pair from the map
  fruits.remove('banana');

  // Map properties and methods
  print(fruits.length); // Output: 3
  print(fruits.isEmpty); // Output: false
  print(fruits.isNotEmpty); // Output: true
  print(fruits.keys); // Output: (apple, orange, mango)
  print(fruits.values); // Output: (5, 3, 4)

  // Checking the existence of a key
  print(fruits.containsKey('apple'));

  // Checking the existence of a value
  print(fruits.containsValue(3));

  // Iterating over map entries
  fruits.forEach((key, value) {
    print('$key: $value');
  });

  // Using for-in loop
  for (var fruit in fruits.entries) {
    print('${fruit.key}: ${fruit.value}');
  }

  //List of maps
  List<Map<String, dynamic>> users = [
    {'name': 'Alice', 'age': 25},
    {'name': 'John', 'age': 32},
    {'name': 'Bob', 'age': 20}
  ];

  print(users[0]); // Output: {name: Alice, age: 25}
  print(users[1]['name']); // Output: John
}
