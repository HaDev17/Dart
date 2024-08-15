// Reverse a string

String reverse(String str) {
  List reverseStr = [];
  reverseStr.length = str.length;
  for (int i = 0; i < str.length; i++) {
    reverseStr[i] = str[str.length - 1 - i];
  }

  return reverseStr.join('');
}

main() {
  String str = "Habib";
  print(reverse(str));
}
