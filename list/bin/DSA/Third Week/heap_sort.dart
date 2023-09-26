void heapSort(List<int> list) {
  int n = list.length;

  // Build heap (rearrange array)
  for (int i = (n ~/ 2) - 1; i >= 0; i--) {
    heapify(list, n, i);
  }

  // One by one extract an element from heap
  for (int i = n - 1; i >= 0; i--) {
    // Move current root to end
    int temp = list[0];
    list[0] = list[i];
    list[i] = temp;

    // call max heapify on the reduced heap
    heapify(list, i, 0);
  }
}

void heapify(List<int> list, int n, int i) {
  int largest = i; // Initialize largest as root
  int left = 2 * i + 1; // left child = 2*i + 1
  int right = 2 * i + 2; // right child = 2*i + 2

  // If left child is larger than root
  if (left < n && list[left] > list[largest]) {
    largest = left;
  }

  // If right child is larger than largest so far
  if (right < n && list[right] > list[largest]) {
    largest = right;
  }

  // If largest is not root
  if (largest != i) {
    int swap = list[i];
    list[i] = list[largest];
    list[largest] = swap;

    // Recursively heapify the affected sub-tree
    heapify(list, n, largest);
  }
}

void main() {
  List<int> list = [4, 10, 3, 5, 1];
  heapSort(list);
  print(list); // prints [1, 3, 4, 5, 10]
}
