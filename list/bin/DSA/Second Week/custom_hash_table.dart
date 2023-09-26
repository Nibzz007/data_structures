class HashTable {
  final int _size;
  final List<List<dynamic>> _data;

  HashTable(this._size) : _data = List<List<dynamic>>.filled(_size, []);

  int _hash(String key) {
    int hash = 0;
    for (int i = 0; i < key.length; i++) {
      hash = (hash + key.codeUnitAt(i) * (i + 1)) % _size;
    }
    return hash;
  }

  void set(String key, dynamic value) {
    int hash = _hash(key);
    for (List<dynamic> pair in _data[hash]) {
      if (pair[0] == key) {
        pair[1] = value;
        return;
      }
    }
    _data[hash].add([key, value]);
  }

  dynamic get(String key) {
    int hash = _hash(key);
    for (List<dynamic> pair in _data[hash]) {
      if (pair[0] == key) {
        return pair[1];
      }
    }
    return null;
  }

  void remove(String key) {
    int hash = _hash(key);
    _data[hash].removeWhere((pair) => pair[0] == key);
  }
}

void main(List<String> args) {
  
}
