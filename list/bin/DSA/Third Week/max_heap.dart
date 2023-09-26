class MaxHeap {
  List<int> heap = [];

  void insert(int value) {
    heap.add(value);
    shiftUp(heap.length - 1);
  }

  int extractMax() {
    if (heap.isEmpty) {
      throw StateError('Heap is empty');
    }

    int max = heap[0];
    int last = heap.removeLast();

    if (heap.isNotEmpty) {
      heap[0] = last;
      shiftDown(0);
    }

    return max;
  }

  void shiftUp(int index) {
    int parentIndex = (index - 1) ~/ 2;

    if (heap[parentIndex] < heap[index]) {
      swap(parentIndex, index);
      shiftUp(parentIndex);
    }
  }

  void shiftDown(int index) {
    int leftChildIndex = 2 * index + 1;
    int rightChildIndex = 2 * index + 2;
    int maxIndex = index;

    if (leftChildIndex < heap.length && heap[leftChildIndex] > heap[maxIndex]) {
      maxIndex = leftChildIndex;
    }

    if (rightChildIndex < heap.length && heap[rightChildIndex] > heap[maxIndex]) {
      maxIndex = rightChildIndex;
    }

    if (maxIndex != index) {
      swap(index, maxIndex);
      shiftDown(maxIndex);
    }
  }

  void swap(int i, int j) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }

  List<int> printHeap() {
    for (int i = 0; i < heap.length; i++) {
      print(heap[i]);
    }
    return heap;
  }
}

void main(List<String> args) {
  MaxHeap m = MaxHeap();
  m.insert(10);
  m.insert(54);
  m.insert(2);
  m.insert(65);
  m.insert(1);
  m.insert(12);
  m.insert(23);
  //print(m.findMin());
  m.printHeap();
}
