// class HashTable {
//   final int capacity;
//   List<dynamic> table = [];

//   HashTable(this.capacity) {
//     table = List.filled(capacity, null);
//   }

//   int hashFunction(dynamic key) {
//     return key % capacity;
//   }

//   void insert(dynamic key, dynamic value) {
//     int index = hashFunction(key);
//     while (table[index] != null) {
//       index = (index + 1) % capacity;
//     }
//     table[index] = [key, value];
//   }

//   dynamic search(dynamic key) {
//     int index = hashFunction(key);
//     while (table[index] != null && table[index][0] != key) {
//       index = (index + 1) % capacity;
//     }
//     if (table[index] == null) {
//       return null;
//     }
//     return table[index][1];
//   }

//   void delete(dynamic key) {
//     int index = hashFunction(key);
//     while (table[index] != null && table[index][0] != key) {
//       index = (index + 1) % capacity;
//     }
//     if (table[index] != null) {
//       table[index] = null;
//     }
//   }

//   void printTable() {
//     for (int i = 0; i < capacity; i++) {
//       print('$i: ${table[i]}');
//     }
//   }
// }

// void main(List<String> args) {
//   HashTable table = HashTable(5);
//   table.insert(2, 'ff');
//   table.insert(5, 'fdgf');
//   table.insert(8, 'ffvxcvcxvf');
//   table.insert(10, 'fdgfsadasdasdasdasd');
//   // table.insert(100, 'fgdfgfdgdfgdfgdfgdfgdfgdfgdfg');
//   // table.insert(105, 'qwe');
//    //table.delete(10);
//   //print(table.search(5));
//   table.printTable();
// }

class HashTable {
  final int capacity;
  List<dynamic> table = [];
  HashTable(this.capacity) {
    table = List.filled(capacity, null);
  }

  dynamic hashFun(dynamic key) {
    return key.hashCode % capacity;
  }

  void insert(dynamic key, dynamic value) {
    int index = hashFun(key);
    while (table[index] != null) {
      index = (index + 1) % capacity;
    }
    table[index] = [key, value];
  }

  dynamic get(dynamic key) {
    int index = hashFun(key);
    while (table[index] != null && table[index][0] != key) {
      index = (index + 1) % capacity;
    }
    if (table[index] == null) {
      return null;
    }
    return table[index][1];
  }

  dynamic delete(dynamic key) {
    int index = hashFun(key);
    while (table[index] != null && table[index][0] != key) {
      index = (index + 1) % capacity;
    }
    if (table[index] != null) {
      table[index] = null;
    }
  }

  void printTable() {
    for (int i = 0; i < capacity; i++) {
      print('$i: ${table[i]}');
    }
  }
}

void main(List<String> args) {
  HashTable h = HashTable(5);
  h.insert('Name', 'Nibu');
  h.insert('Age', 27);
  h.insert('Place', 'Kannur');
  h.insert('Birth year', 1996);
  h.delete('Place');
  h.printTable();
}
