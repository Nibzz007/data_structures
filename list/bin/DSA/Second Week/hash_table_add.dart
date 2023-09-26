// `import 'dart:collection';

// void main() {
//   HashMap<String, int> hashTable = HashMap();

//   // Add elements to the hash table
//   hashTable['first'] = 1;
//   hashTable['second'] = 2;
//   hashTable['third'] = 3;

//   // Print the elements of the hash table
//   hashTable.forEach((key, value) {
//     print('$key: $value');
//   });
// }

void main(List<String> args) {
  Map<String, int> hashTable = {};
  //Adding value at runtime
  hashTable['Year'] = 2023;
  hashTable['Fee'] = 10000;

  hashTable.addAll({'bb':44, 'dfg':45});
  print(hashTable);
}
