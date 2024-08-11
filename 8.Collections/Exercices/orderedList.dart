// Ordering a list of numbers

void main() {
  List<int> numbers = [4, 2, 5, 1, 3];
  // we can use the function sort() direclty on the list
  numbers.sort();
  print(numbers); // [1, 2, 3, 4, 5]

  // we can also order the list manually, its for educational purposes
  List<int> numbers2 = [4, 2, 5, 1, 3];
  for (int i = 0; i < numbers2.length; i++) {
    for (int j = i + 1; j < numbers2.length; j++) {
      if (numbers2[i] > numbers2[j]) {
        int temp = numbers2[i];
        numbers2[i] = numbers2[j];
        numbers2[j] = temp;
      }
    }
  }
  print(numbers2); // [1, 2, 3, 4, 5]
}
