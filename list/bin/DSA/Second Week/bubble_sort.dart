// void main() {
//   List<int> bubble = [3, 9, 1, 5, 7];
//   bubbleSort(bubble);
//   print('Sorted array');
//   //printArray(bubble);
//   print(bubble);
// }

// void printArray(List<int> bubble) {
//   int n = bubble.length;
//   for (int i = 0; i < n; i++) {
//     print(bubble[i]);
//   }
// }

// void bubbleSort(List<int> bubble) {
//   int n = bubble.length;

//   for (int i = 0; i < n - 1; i++) {
//     for (int j = 0; j < n - i - 1; j++) {
//       if (bubble[j] > bubble[j + 1]) {
//         int temp = bubble[j];
//         bubble[j] = bubble[j + 1];
//         bubble[j + 1] = temp;
//       }
//     }
//   }
// }

// void bubbleSort(List<int> arr) {
//   int n = arr.length;
//   for (int i = 0; i < n - 1; i++) {
//     for (int j = 0; j < n - i - 1; j++) {
//       if (arr[j] > arr[j + 1]) {
//         int temp = arr[j];
//         arr[j] = arr[j + 1];
//         arr[j + 1] = temp;
//       }
//     }
//   }
// }

// /* Prints the array */
// void printArray(List<int> arr) {
//   int n = arr.length;
//   for (int i = 0; i < n; ++i) {
//     print(arr[i]);
//   }
// }

// // Driver method to test above
// void main() {
//   List<int> arr = [5, 1, 4, 2, 8];
//   bubbleSort(arr);
//   print("Sorted array");
//   printArray(arr);
// }

void main(List<String> args) {
  List<int> arr = [3, 2, 7, 21, 23,1, 12, 34, 14];
  bubbleSort(arr);
  print(arr);
}

void bubbleSort(List<int> arr) {
  int n = arr.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
 // arr.removeWhere((element) => element == 1);
}
