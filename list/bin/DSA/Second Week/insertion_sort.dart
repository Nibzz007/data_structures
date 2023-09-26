// void main(List<String> args) {
//   List<int> arr = [3, 6, 9, 1, 4, 2, 5];
//   insertionSort(arr);
//   print('Sorted Array');
//   printArray(arr);
// }

// void printArray(List<int> arr) {
//   int n = arr.length;
//   for (int i = 0; i < n; i++) {
//     print(arr[i]);
//   }
// }

// void insertionSort(List<int> arr) {
//   int n = arr.length;

//   for (int i = 1; i < n; i++) {
//     int key = arr[i];
//     int j = i - 1;
//     while (j >= 0 && arr[j] > key) {
//       arr[j + 1] = arr[j];
//       j--;
//     }
//     arr[j + 1] = key;
//   }
// }

void main(List<String> args) {
  List<int> arr = [3, 2, 7, 21, 23, 12, 34, 14];
  insertion(arr);
  print(arr);
}

void insertion(List<int> arr) {
  int n = arr.length;
  for (int i = 1; i < n; i++) {
    int key = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = key;
  }
}
