import 'number.dart';

main() async {
  var stream = Number().stream;
  await for (var number in stream) {
    print(number);
  }
}
