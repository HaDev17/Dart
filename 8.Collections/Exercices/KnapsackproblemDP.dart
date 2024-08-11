import 'dart:math';

int knapsack(List<List<int>> items, int capacity) {
  int itemCount = items.length;
  List<List<int>> maxValues = List.generate(
      itemCount + 1, (_) => List.filled(capacity + 1, 0, growable: false));

  for (int i = 0; i <= itemCount; i++) {
    for (int w = 0; w <= capacity; w++) {
      if (i == 0 || w == 0) {
        maxValues[i][w] = 0;
      } else if (items[i - 1][0] <= w) {
        int include = items[i - 1][1] + maxValues[i - 1][w - items[i - 1][0]];
        int exclude = maxValues[i - 1][w];
        maxValues[i][w] = max(include, exclude);
      } else {
        maxValues[i][w] = maxValues[i - 1][w];
      }
    }
  }

  return maxValues[itemCount][capacity];
}

void main() {
  List<List<int>> items = [
    [300, 5],
    [200, 1],
    [30, 7],
    [500, 4],
    [100, 3],
    [400, 2]
  ];
  int capacity = 700;
  print(knapsack(items, capacity)); // Outputs: 220
}
