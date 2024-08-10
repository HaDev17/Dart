// Knapsack problem

// Knapsack problem is a problem in combinatorial optimization.
// Given a set of items, each with a weight and a value, determine the number
// of each item to include in a collection so that the total weight is less than
// or equal to a given limit and the total value is as large as possible.

// Let's see how we can solve the knapsack problem using dart

// import 'dart:io';

// [{300, 5}, {200, 1}, {30, 7}, {500, 4}, {100, 3}, {400, 2}]
// 300 5 200 1 30 7 100 3 400 2
// 300 5 200 1 30 7 100 3

// 200 1 30 7 100 3
// 30 7 100 3

//400 =>  [{200, 1}, {30, 7}, {100, 3}]
// 700 => [{300, 5}, {200, 1}, {30, 7}, {100, 3}]

// Let define a function, thatn get the list of items and the capacity of the knapsack,
// and return to us the list of items to include in the knapsack and the total value of the items

List<List<int>> Knapsack(List<List<int>> items, int capacity) {
  // define knapsack list :
  List<List<int>> knapsack = [];
  // initial the disponible capacity
  int restCapacity = capacity;
  while (items.length != 0) {
    int maxValue = items[0][1];
    int i = 0;
    for (int j = 1; j < items.length; j++) {
      if (maxValue <= items[j][1]) {
        maxValue = items[j][1];
        i = j;
      }
    }
    if (items[i][0] <= restCapacity) {
      restCapacity -= items[i][0];
      knapsack.add(items[i]);
    }
  }

  return knapsack;
}

void main() {
  List<List<int>> collection = [
    [300, 5],
    [200, 1],
    [30, 2],
    [500, 4],
    [100, 3],
    [400, 2]
  ];

  List<List<int>> knapsack = Knapsack(collection, 800);
  print(knapsack);
}
