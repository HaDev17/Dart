// ceasar cipher in dart

// First of all ceasar cipher is a method to decrypt a message,
// so it work by shifting the letters of the message by a fixed number of positions down the alphabet.
// For example we have a message 'abcd' and the key is 3 the new message is 'cdef'.

//Let's create a simple programme for it

// First we will create a function that convert a letter to a number

const alphabet = [
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J',
  'K',
  'L',
  'M',
  'N',
  'O',
  'P',
  'Q',
  'R',
  'S',
  'T',
  'U',
  'V',
  'W',
  'X',
  'Y',
  'Z'
];

int letterToNumber(String letter) {
  // Get the index of the letter in the alphabet
  return alphabet.indexOf(letter);
}

String numberToLetter(int number) {
  // Get the letter at the index in the alphabet
  return alphabet[number];
}

String caesar(String msg, int key) {
  msg = msg.toUpperCase();
  String newMsg = '';
  for (int i = 0; i < msg.length; i++) {
    if (msg[i] != ' ') {
      // Get the letter at the index i
      String letter = msg[i];
      // Convert the letter to a number
      int number = letterToNumber(letter);
      // Shift the letter by the key.
      // if the newNumber is greater than 26, so we get the modulo of 26.
      int newNumber = (number + key) % 26;
      // Convert the newNumber to a letter
      String newLetter = numberToLetter(newNumber);
      // Add the new letter to the new message
      newMsg += newLetter;
    } else {
      newMsg += msg[i];
    }
  }

  return newMsg;
}

// and if we want to decrypt we just pass a negative number

void main() {
  String crypt = "habib";
  print(caesar(crypt, 12)); // TMNUN
  String decrypt = "TMNUN";
  print(caesar(decrypt, -12)); // HABIB
}


// Note : we can also use ascii code without creating a list of alphabet .