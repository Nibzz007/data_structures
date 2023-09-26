// class Node{
//   int? data;
//   Node? next;

//   Node(this.data);
// }

// Node? top;

// void push(int data) {
//   Node newNode = Node(data);

//   if(top == null) {
//     top = newNode;
//   } else {
//     newNode.next = top;
//     top = newNode;
//   }
// }

// void pop() {
//   if(top == null){
//     print('Empty');
//   }
//   top = top!.next;
// }

// void display() {
//   Node? temp = top;

//   while(temp != null) {
//     print(temp.data);
//     temp = temp.next;
//   }
// }

// void sort() {

// }

// void main(List<String> args) {

// }

// class HashTable {
//   List<dynamic> table = [];
//   int? capacity;

//   HashTable(this.capacity) {
//     table = List.filled(capacity!, null);
//   }

//   int hashFunction(dynamic key) {
//     return key.hashCode % capacity!;
//   }

//   void put(dynamic key, dynamic value) {
//   int index = hashFunction(key);

// }

// }



// void main(List<String> args) {
//   List<int> list = [1, 3, 5, 4, 7, 8];
//   findEven(list);
// }

// void findEven(List<int> list) {
//   for (int i = 0; i <= list.length; i++) {
//     if (list[i] % 2 == 0) {
//       print(list[i]);
//     }
//   }
// }

// void main(List<String> args) {
//   List<int> list = [2,1,5,7,8,9];
//   bubbleSorting(list);
//   print(list);
// }

// void bubbleSorting(List<int> list) {
//   int n = list.length;
//   for(int i = 0; i < n - 1; i++){
//     for(int j = 0; j < n - i -1; j++){
//       if(list[j] > list[j + 1] && list[j+1] !=1 || list[j] != 1 ){
//         int temp = list[j + 1];
//         list[j + 1] = list[j];
//         list[j] = temp;

//       }
//     }
//   }
// }
