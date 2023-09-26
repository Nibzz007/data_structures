class MinHeap {
  List<int> heap = [];

  void insert(int value) {
    heap.add(value);
    _bubbleUp(heap.length - 1);
  }

  int deleteMin() {
    if (heap.isEmpty) {
      throw Exception('Heap is empty');
    }

    int min = heap[0];
    int last = heap.removeLast();

    if (heap.isNotEmpty) {
      heap[0] = last;
      _bubbleDown(0);
    }

    return min;
  }

  int findMin() {
    if (heap.isEmpty) {
      throw Exception('Heap is empty');
    }

    return heap[0];
  }

  void _bubbleUp(int index) {
    while (index > 0) {
      int parentIndex = (index - 1) ~/ 2;

      if (heap[parentIndex] > heap[index]) {
        _swap(parentIndex, index);
        index = parentIndex;
      } else {
        break;
      }
    }
  }

  void _bubbleDown(int index) {
    while (index * 2 + 1 < heap.length) {
      int leftChildIndex = index * 2 + 1;
      int rightChildIndex = index * 2 + 2;
      int smallestChildIndex = leftChildIndex;

      if (rightChildIndex < heap.length &&
          heap[rightChildIndex] < heap[leftChildIndex]) {
        smallestChildIndex = rightChildIndex;
      }

      if (heap[index] > heap[smallestChildIndex]) {
        _swap(index, smallestChildIndex);
        index = smallestChildIndex;
      } else {
        break;
      }
    }
  }

  void _swap(int i, int j) {
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
  MinHeap m = MinHeap();
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
