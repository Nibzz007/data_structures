void heapify(List<int> arr, int n, int i) {
  int largest = i;
  int left = 2 * i + 1;
  int right = 2 * i + 2;

  if (left < n && arr[left] > arr[largest]) largest = left;

  if (right < n && arr[right] > arr[largest]) largest = right;

  if (largest != i) {
    int swap = arr[i];
    arr[i] = arr[largest];
    arr[largest] = swap;

    heapify(arr, n, largest);
  }
}

void main(List<String> args) {
  List<int> arr = [2, 6, 3, 7, 24];
  int n = arr.length;
  // Build heap (rearrange array)
  // for (int i = (n / 2 - 1).floor(); i >= 0; i--) {
  //   heapify(arr, n, i);
  // }
  for (int i = (n - 2) ~/ 2; i >= 0; i--) {
    heapify(arr, n, i);
  }

  print(arr);
}
