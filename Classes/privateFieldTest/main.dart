import 'Point.dart';

void main() {
  var p1 = Point(x: 1, y: 32);
  p1.show();
  // x: 1, y: 32
  // but if we try to change the private fields like this:
  // p1.x = 4;
  // we will have an error because the private fields are not accessible from outside the class.
}
