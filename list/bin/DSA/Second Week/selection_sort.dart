// void main(List<String> args) {
//   List<int> list = [64, 25, 12, 22, 11];
//   sort(list);
//   print('Sorted Array');
//   printArray(list);
// }

// void printArray(List<int> list) {
//   int n = list.length;
//   for(int i = 0; i < n; i++) {
//     print(list[i]);
//   }
// }

// void sort(List<int> list) {
//   int n = list.length;

//   for (int i = 0; i < n - 1; i++) {
//     int min = i;
//     for (int j = i + 1; j < n; j++) {
//       if (list[j] < list[min]) {
//         min = j;
//       }
//     }

//     int temp = list[min];
//     list[min] = list[i];
//     list[i] = temp;
//   }
// }

void main(List<String> args) {
  List<int> arr = [3, 2, 7, 21, 23, 12, 34, 14];
  selection(arr);
  print(arr);
}

void selection(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    int min = i;
    for (int j = i + 1; j < n; j++) {
      if (arr[j] < arr[min]) {
        min = j;
      }
    }
    int temp = arr[min];
    arr[min] = arr[i];
    arr[i] = temp;
  }
}
