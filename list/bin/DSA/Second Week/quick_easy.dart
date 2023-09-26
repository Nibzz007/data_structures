//?quick sort
// int position(List arr, int left, int right) {
//   int pivot = arr[right];
//   int i = left - 1;

//   for (int j = left; j < right; j++) {
//     if (arr[j] < pivot) {
//       i++;
//       swap(arr, i, j);
//     }
//   }
//   swap(arr, i + 1, right);
//   return i + 1;
// }

// void quickSort(List arr, int left, int right) {
//   if (left < right) {
//     int pivotIndex = position(arr, left, right);
//     quickSort(arr, left, pivotIndex - 1);
//     quickSort(arr, pivotIndex + 1, right);
//   }
// }

// swap(List arr, int i, int j) {
//   int temp = arr[i];
//   arr[i] = arr[j];
//   arr[j] = temp;
// }
// void main(List<String> args) {
//   List<int> arr = [1,2,5,9,12,3,24,18,35];
//   quickSort(arr, 0, arr.length-1);
//   print(arr);
// }

void main(List<String> args) {
  List<int> arr = [3, 2, 7, 21, 23];
  int n = arr.length;
  quick(arr, 0, n - 1);
  print(arr);
}

void quick(List<int> arr, int low, int high) {
  if (low < high) {
    int pIndex = pos(arr, low, high);
    quick(arr, low, pIndex - 1);
    quick(arr, pIndex + 1, high);
  }
}

int pos(List<int> arr, int low, int high) {
  int p = arr[high];
  int i = low - 1;
  for (int j = low; j < high; j++) {
    if (arr[j] < p) {
      i++;
      swap(arr, i, j);
    }
  }
  swap(arr, i + 1, high);
  return i + 1;
}

void swap(List<int> arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}
