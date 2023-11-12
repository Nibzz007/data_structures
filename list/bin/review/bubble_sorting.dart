void main(List<String> args) {
  BSort b = BSort();
  List<int> arr = [3, 2, 7, 21, 23, 1, 12, 34, 14];
  int n = arr.length;
  b.bSort(arr, n);
  print(arr);
}

class BSort {
  void bSort(List<int> arr, int n) {
    for (int i = 0; i < n - 1; i++) {
      for (int j = 0; j < n - i - 1; j++) {
        if (arr[j] > arr[j + 1]) {
          int temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
        }
      }
    }
  }
}
