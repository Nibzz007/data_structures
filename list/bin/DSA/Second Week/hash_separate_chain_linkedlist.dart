class Node {
  final dynamic key;
  dynamic value;
  Node? next;

  Node(this.key, this.value);
}

class HashTable {
  final int _capacity;
  List<Node?> _buckets = [];

  HashTable(this._capacity) {
    _buckets = List.filled(_capacity, null);
  }

  int _hash(dynamic key) {
    return key.hashCode % _capacity;
  }

  dynamic put(dynamic key, dynamic value) {
    final index = _hash(key);
    final node = Node(key, value);

    if (_buckets[index] == null) {
      _buckets[index] = node;
    } else {
      var curr = _buckets[index];
      while (curr != null) {
        if (curr.key == key) {
          curr.value = value;
          return value;
        }
        if (curr.next == null) {
          break;
        }
        curr = curr.next;
      }
      curr!.next = node;
    }
    return value;
  }

  dynamic get(dynamic key) {
    final index = _hash(key);
    var curr = _buckets[index];

    while (curr != null) {
      if (curr.key == key) {
        return curr.value;
      }
      curr = curr.next;
    }

    return null;
  }

  void remove(dynamic key) {
    final index = _hash(key);
    var curr = _buckets[index];
    Node? prev;

    while (curr != null) {
      if (curr.key == key) {
        if (prev == null) {
          _buckets[index] = curr.next;
        } else {
          prev.next = curr.next;
        }
        return;
      }
      prev = curr;
      curr = curr.next;
    }
  }

  void printTable() {
    for (int i = 0; i < _capacity; i++) {
      print('$i: ${_buckets[i]}');
    }
  }
}

void main(List<String> args) {
  HashTable h = HashTable(5);
  print(h.put(2, 'ff'));
  print(h.put(5, 'fdgf'));
  h.put(8, 'ffvxcvcxvf');
  //print(h.get(2));
  h.printTable();
}
