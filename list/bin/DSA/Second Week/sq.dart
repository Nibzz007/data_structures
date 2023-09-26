//* Stack using Queue *//

// import 'dart:collection';

// class StackNQueue {
//   Queue<int> _queue1 = Queue();
//   Queue<int> _queue2 = Queue();

//   void push(int value) {
//     _queue1.add(value);
//   }

//   int? pop() {
//     if (isEmpty()) {
//       throw Exception('Stack is empty');
//     }
//     while (_queue1.length > 1) {
//       _queue2.add(_queue1.removeFirst());
//     }

//     int value = _queue1.removeFirst();

//     Queue<int> temp = _queue1;
//     _queue1 = _queue2;
//     _queue2 = temp;

//     return value;
//   }

//   bool isEmpty(){
//     return _queue1.isEmpty;
//   }
// }

// void main(List<String> args) {
//   StackNQueue stack = StackNQueue();

//   stack.push(2);
//   stack.push(4);
//   stack.push(6);

//   print(stack.pop());
//   print(stack.pop());
//   print(stack.pop());
//   print(stack.pop());
// }

//* Hash Table *//

// class HashTable {
//   List<List<String>>? values;
//   int limit;
//   HashTable(this.limit) {
//     //limit = size;
//     values = List.generate(limit, (_) => []);
//   }

//   int hashFunction(String key) {
//     int hash = 0;
//     for (int i = 0; i < key.length; i++) {
//       hash = hash + key.codeUnitAt(i);
//     }
//     return hash % limit;
//   }

//   void put(String key, String value) {
//     int index = hashFunction(key);
//     while (values![index][0] != key) {
//       index = (index + 1) % limit;
//     }
//     values![index].add(value);
//   }

//   String get(String key) {
//     int index = hashFunction(key);
//     return values![index].toString();
//   }
// }

// void main(List<String> args) {
//   HashTable h = HashTable(5);
//   h.put('Name', 'Nibu');
//   h.put('Place', 'Kannur');
//   h.put('Domain', 'Flutter');
//   h.put('Age', '27');
//   h.put('Team', 'ManUtd');
//   print(h.get("Name"));
// }

//* Merge sort *//

// void main(List<String> args) {
//   List<int> merge = [8,12,3,23,34,13,6,1];
//   mergeSorting(merge);
//   print(merge);
// }

// void mergeSorting(List<int> merge) {
//   if(merge.length <= 1){
//     return;
//   }

//   int mid = merge.length ~/ 2;
//   List<int> leftList = merge.sublist(0, mid);
//   List<int> rightList = merge.sublist(mid);
//   mergeSorting(leftList);
//   mergeSorting(rightList);
//   join(merge, leftList, rightList);
// }

// void join(List<int> merge, List<int> leftList, List<int> rightList) {
//   int leftIndex = 0;
//   int rightIndex = 0;
//   int listIndex = 0;

//   while(leftIndex < leftList.length && rightIndex < rightList.length) {
//     if(leftList[leftIndex] < rightList[rightIndex]) {
//       merge[listIndex] = leftList[leftIndex];
//       leftIndex++;
//     } else {
//       merge[listIndex] = rightList[rightIndex];
//       rightIndex++;
//     }
//     listIndex++;
//   }

//   while(leftIndex < leftList.length) {
//     merge[listIndex] = leftList[leftIndex];
//     leftIndex++;
//     listIndex++;
//   }

//   while(rightIndex < rightList.length) {
//     merge[listIndex] = rightList[rightIndex];
//     rightIndex++;
//     listIndex++;
//   }
// }

//* Quick sort *//

// void main(List<String> args) {
//   List<int> array = [8, 12, 3, 23, 34, 13, 6, 1];
//   quickSorting(array, 0, array.length - 1);
//   print(array);
// }

// void quickSorting(List<int> array, int low, int high) {
//   if (low < high) {
//     int p = pos(array, low, high);
//     quickSorting(array, low, p - 1);
//     quickSorting(array, p + 1, high);
//   }
// }

// int pos(List<int> array, int low, int high) {
//   int pivot = array[high];
//   int i = low - 1;

//   for (int j = low; j < high; j++) {
//     if (array[j] < pivot) {
//       i++;
//       swapping(array, i, j);
//     }
//   }
//   swapping(array, i + 1, high);
//   return i + 1;
// }

// void swapping(List<int> array, int i, int j) {
//   int temp = array[i];
//   array[i] = array[j];
//   array[j] = temp;
// }

//* Bubble sort *//

// void main(List<String> args) {
//   List<int> array = [8, 12, 3, 23, 34, 13, 6, 1];
//   bubbleSorting(array);
//   print(array);
// }

// void bubbleSorting(List<int> array) {
//   int n = array.length;

//   for (int i = 0; i < n - 1; i++) {
//     for (int j = 0; j < n - i - 1; j++) {
//       if (array[j] > array[j + 1]) {
//         int temp = array[j];
//         array[j] = array[j + 1];
//         array[j + 1] = temp;
//       }
//     }
//   }
// }

//* Selection sort *//

// void main(List<String> args) {
//   List<int> array = [8, 12, 3, 23, 34, 13, 6, 1];
//   selectionSort(array);
//   print(array);
// }

// void selectionSort(List<int> array) {
//   int n = array.length;
//   for (int i = 0; i < n - 1; i++) {
//     int min = i;
//     for(int j = i + 1; j < n; j ++) {
//       if(array[j] < array[min]) {
//         min = j;
//       }
//     }

//     int temp = array[min];
//     array[min] = array[i];
//     array[i] = temp;
//   }
// }

//* Insertion sort *//

// void main(List<String> args) {
//   List<int> array = [8, 12, 3, 23, 34, 13, 6, 1];
//   insertionSorting(array);
//   print(array);
// }

// void insertionSorting(List<int> array) {
//   int n = array.length;
//   for(int i = 1; i < n; i++){
//     int key = array[i];
//     int j = i - 1;
//     while(j >= 0 && array[j] > key){
//       array[j + 1] = array[j];
//       j--;
//     }
//     array[j + 1] = key;
//   }
// }

//* Hash table Separate chaining Linked list *//

class Node {
  dynamic key;
  dynamic value;
  Node? next;

  Node(this.key, this.value);
}

class HashTable {
  final int? capacity;
  late final List<Node?> buckets;

  HashTable(this.capacity) {
    buckets = List.filled(capacity!, null);
  }

  int hashFunction(dynamic key) {
    return key.hashCode % capacity!;
  }

  dynamic put(dynamic key, dynamic value) {
    final index = hashFunction(key);
    final newNode = Node(key, value);

    if (buckets[index] == null) {
      buckets[index] = newNode;
    } else {
      var current = buckets[index];
      while (current != null) {
        if (current.key == key) {
          current.value = value;
          return value;
        }
        if (current.next == null) {
          break;
        }
        current = current.next;
      }
      current?.next = newNode;
    }
    return value;
  }

  dynamic get(dynamic key) {
    final index = hashFunction(key);
    var current = buckets[index];

    while (current != null) {
      if (current.key == key) {
        return current.value;
      }
    }
    return null;
  }

  void remove(dynamic key) {
    final index = hashFunction(key);
    var current = buckets[index];
    Node? previous;

    while (current != null) {
      if (current.key == key) {
        if (previous == null) {
          buckets[index] == current.next;
        } else {
          previous.next = current.next;
        }
        return;
      }
      previous = current;
      current = current.next;
    }
  }

  void printHash() {
    for (int i = 0; i < capacity!; i++) {
      print('$i : ${buckets[i]}');
    }
  }
}

void main(List<String> args) {
  HashTable h = HashTable(5);
  h.put(2, 'ff');
  h.put(5, 'fdgf');
  h.put(8, 'ffvxcvcxvf');
  h.put(10, 'fdgfsadasdasdasdasd');
  h.put(100, 'fgdfgfdgdfgdfgdfgdfgdfgdfgdfg');
  h.put(105, 'qwe');
  h.printHash();
}
