// void mergeSort(List<int> list) {
//   if (list.length <= 1) return;
//   var mid = list.length ~/ 2;
//   List<int> left = list.sublist(0, mid);
//   List<int> right = list.sublist(mid);
//   mergeSort(left);
//   mergeSort(right);
//   var i = 0;
//   var j = 0;
//   var k = 0;
//   while (i < left.length && j < right.length) {
//     if (left[i] < right[j]) {
//       list[k] = left[i];
//       i++;
//     } else {
//       list[k] = right[j];
//       j++;
//     }
//     k++;
//   }
//   while (i < left.length) {
//     list[k] = left[i];
//     i++;
//     k++;
//   }
//   while (j < right.length) {
//     list[k] = right[j];
//     j++;
//     k++;
//   }
// }

// void main(List<String> args) {
//   List<int> list = [1,2,5,9,12,3,24,18,35];
//   mergeSort(list);
//   print(list);
// }

// void mergeSort(List<int> array) {
//   if (array.length <= 1) {
//     return;
//   }
//   int mid = (array.length / 2).floor();
//   List<int> left = array.sublist(0, mid);
//   List<int> right = array.sublist(mid);
//   mergeSort(left);
//   mergeSort(right);
//   merge(left, right, array);
// }

// void merge(List<int> left, List<int> right, List<int> array) {
//   int leftIndex = 0;
//   int rightIndex = 0;
//   int arrayIndex = 0;
//   while (leftIndex < left.length && rightIndex < right.length) {
//     if (left[leftIndex] < right[rightIndex]) {
//       array[arrayIndex] = left[leftIndex];
//       leftIndex++;
//     } else {
//       array[arrayIndex] = right[rightIndex];
//       rightIndex++;
//     }
//     arrayIndex++;
//   }
//   while (leftIndex < left.length) {
//     array[arrayIndex] = left[leftIndex];
//     leftIndex++;
//     arrayIndex++;
//   }
//   while (rightIndex < right.length) {
//     array[arrayIndex] = right[rightIndex];
//     rightIndex++;
//     arrayIndex++;
//   }
// }

// void main(List<String> args) {
//   List<int> numbers = [4, 7, 1, 3, 9, 2];
//   mergeSort(numbers);
//   print(numbers); // Output: [1, 2, 3, 4, 7, 9]
// }

void merge(List<int> arr, List<int> left, List<int> right) {
  int i = 0;
  int j = 0;
  int k = 0;

  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      arr[k] = left[i];
      i++;
    } else {
      arr[k] = right[j];
      j++;
    }
    k++;
  }

  while (i < left.length) {
    arr[k] = left[i];
    i++;
    k++;
  }

  while (j < right.length) {
    arr[k] = right[j];
    j++;
    k++;
  }
}

void mergeSort(List<int> arr) {
  int n = arr.length;
  if (n <= 1) {
    return;
  }
  int mid = n ~/ 2;
  List<int> left = arr.sublist(0, mid);
  List<int> right = arr.sublist(mid);

  mergeSort(left);
  mergeSort(right);
  merge(arr, left, right);
}

void main(List<String> args) {
  List<int> arr = [3, 2, 7, 21, 23, 12, 34, 14];
  mergeSort(arr);
  print(arr);
}
