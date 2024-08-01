class Point {
  double _x = 0;
  double _y = 0;

  Point({double x = 0, double y = 0}) {
    this._x = x;
    this._y = y;
  }

  show() {
    print('x: $_x, y: $_y');
  }
}
