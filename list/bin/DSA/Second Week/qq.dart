class HashTable{
  int capacity;
  List<dynamic> table = [];

  HashTable(this.capacity) {
    table = List.filled(capacity, null);
  }

  int hashFunction(dynamic key) {
    return key.hashCode % capacity;
  }

  int put(dynamic key, dynamic value) {
    int index = hashFunction(key);
    table[index] =(value);
    return value;
  }

   dynamic delete(dynamic key){
    int index = hashFunction(key);
    table[index] = null;
  }

  dynamic get(dynamic key) {
    int index = hashFunction(key);
    return table[index];
  }
  void printTable() {
    for (int i = 0; i < capacity; i++) {
      print('$i: ${table[i]}');
    }
  }
}

void main(List<String> args) {
  HashTable h = HashTable(3);
  (h.put(2, 3));
  h.put(4, 33);
  //print(h.get(4));
  h.delete(2);
  h.printTable();
}
