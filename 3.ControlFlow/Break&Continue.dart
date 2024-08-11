// Break & Continue in Dart

// Dart provides two keywords, break and continue, to control the flow of loops.

// The break keyword is used to terminate the loop immediately when it is encountered.
// It is used to exit the loop prematurely.

// The continue keyword is used to skip the current iteration of the loop and continue with the next iteration.

void main() {
  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      break;
    }
    print(i);
  }
  // Output: 1 2

  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      continue;
    }
    print(i);
  }
  // Output: 1 2 4 5
}
