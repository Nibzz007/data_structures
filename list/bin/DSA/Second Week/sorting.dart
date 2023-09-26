// Selection Sort
// void main(List<String> args) {
//   List<int> arr = [3, 6, 2, 7, 9, 5, 12, 15];
//   selectionSort(arr);
//   printArray(arr);
// }

// void printArray(List<int> arr) {
//   int n = arr.length;
//   for (int i = 0; i < n; i++) {
//     print(arr[i]);
//   }
// }

// void selectionSort(List<int> arr) {
//   int n = arr.length;
//   for (int i = 0; i < n - 1; i++) {
//     int min = i;
//     for (int j = i + 1; j < n; j++) {
//       if(arr[j] < arr[min]){
//         min = j;
//       }
//     }
//     int temp = arr[min];
//     arr[min] = arr[i];
//     arr[i] = temp;
//   }
// }

// Insertion Sort

void main(List<String> args) {
  List<int> arr = [3, 6, 2, 7, 9, 5, 12, 15];
  insertionSort(arr);
  printArray(arr);
}

void printArray(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n; i++) {
    print(arr[i]);
  }
}

void insertionSort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n; i++) {
    int key = arr[i];
    int j = i - 1;

    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j+1] = key;
  }
}
