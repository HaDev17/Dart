// Iterator in Dart

// Dart uses the Iterator<E> interface for getting items, one at a time, from an object.

// The Iterable<E> has the moveNext() method that moves the iterator to the next element.
// It returns true if the object still has at least one element. If no element is left, the moveNext() returns false.

// Initially, the iterator is positioned before the first element. Therefore,
// before accessing the first element (or the next element), you need to call the moveNext() method.

// The current property returns the current element. Before accessing the current property,
// you must always call the moveNext() method and ensure the method returns true.

// Simple example :
void main() {
  var ratings = [1, 2, 3, 4, 5];
  var it = ratings.iterator;
  while (it.moveNext()) {
    print(it.current);
  }
}
