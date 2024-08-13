// reduce in Dart :
// The reduce() is a method Iterable<E> class. Here’s the syntax of the reduce() method:
// E reduce( E combine(E value,E element))

// The reduce() method reduces a collection of elements to a single value by iteratively combining elements using
// a combine() function.

// The reduce() raises an exception if the iterable has no element. Therefore, the iterable must have at least one element.
// Also, if the iterable has only one element, the reduce() method returns that element.

// If the iterable has multiple elements, the reduce() method starts with the first element and combines it with
// the remaining elements in iteration order.

// Let's see some examples of the reduce() method.

main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int sum = numbers.reduce((value, element) => value + element); // 15
  print(sum);

  // I know you are thinking how it works. Let me explain it to you.
  // The reduce() method takes a function as an argument. The function has two parameters: value and element.
  // The value is the result of the previous iteration, and the element is the current element of the iterable.
  // The function combines the value and the element and returns the result.
  // so if we break down the above example, it will look like this:
  // 1. value = 1, element = 2 => 1 + 2 = 3
  // 2. value = 3, element = 3 => 3 + 3 = 6
  // 3. value = 6, element = 4 => 6 + 4 = 10
  // ... and so on until the last element.

  // Let's see another example:
  int max = numbers.reduce((a, b) => a > b ? a : b);
  int min = numbers.reduce((a, b) => a < b ? a : b);
  print("$max, $min"); // 5, 1

  // So you see that the reduce() method is very powerful and can be used in many scenarios.
}
