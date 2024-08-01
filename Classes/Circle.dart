class Circle {
  double _radius = 0;

  Circle({double raduis = 0}) {
    this._radius = raduis;
  }
  //use the set keyword to create a setter function.
  set raduis(double value) {
    if (value >= 0) this._radius = value;
  }

  //use the get keyword to create a getter function
  // As the getter function return a value we have to specify which type is
  double get raduis => this._radius;

// we used arrow function, so the function abouve is equivalent to this function :
  // double get radius {
  //   return _radius;
  // }

  double get area => _radius * _radius * 3.141592653589793;
}
