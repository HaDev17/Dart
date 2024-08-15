// Create a reverse extension to the string object

extension on String {
  String reverse() {
    List reverseStr = [];
    reverseStr.length = this.length;
    for (int i = 0; i < this.length; i++) {
      reverseStr[i] = this[this.length - 1 - i];
    }
    return reverseStr.join('');
  }
}

main() {
  String str = "habib begua";
  print(str.reverse());
}
