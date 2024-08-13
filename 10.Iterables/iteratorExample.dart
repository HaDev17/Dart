// Try to understand

class Sentence implements Iterator {
  int _indexWord = -1;
  List<String> _words = [];

  Sentence(String str) {
    this._words = str.split(' ');
  }

  @override
  get current {
    if (this._indexWord >= 0 && this._indexWord <= this._words.length - 1) {
      return this._words[_indexWord];
    }
  }

  @override
  bool moveNext() {
    if (this._indexWord < this._words.length - 1) {
      this._indexWord++;
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  Sentence str = Sentence("Begua Maamar Elhabib");
  while (str.moveNext()) {
    print(str.current);
  }
}
