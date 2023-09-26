// class CustomQueue {
//   int rear = -1;
//   int front = -1;
//   List queueList = [];

//   void enqueue(int data) {
//     queueList.add(data);
//     rear++;
//   }

//   int dequeue() {
//     if (front > rear || front == -1) {
//       throw Exception('Queue is empty');
//     } else {
//       int dequeuedValue = queueList[front];
//       if (front == rear) {
//         front = -1;
//         rear = -1;
//       } else {
//         front++;
//       }

//       //front++;
//       return dequeuedValue;
//     }
//   }

//   void displayQueue() {
//     for (int i = 0; i < queueList.length; i++) {
//       print(queueList[i]);
//     }
//   }

//   bool isEmpty() {
//     return queueList.isEmpty;
//   }

//   int size() {
//     return rear - front + 1;
//   }
// }

// void main(List<String> args) {
//   CustomQueue q = CustomQueue();
//   q.enqueue(3);
//   q.enqueue(44);
//   q.enqueue(345);
//   q.dequeue();
//   q.displayQueue();
//   //print(q.size());
// }

class Queue {
  List<int> q = [];

  bool isEmpty() {
    return q.isEmpty;
  }

  int size() {
    return q.length;
  }

  void enqueue(int data) {
    q.add(data);
  }

  int dequeue() {
    if (isEmpty()) {
      print('Queue is empty');
    }
    return q.removeAt(0);
  }

  int peek() {
    if (isEmpty()) {
      print('Queue is empty');
    }
    return q.first;
  }

  void printList() {
    for (int i = 0; i < q.length; i++) {
      print(q[i]);
    }
  }
}

void main(List<String> args) {
  Queue qu = Queue();
  qu.enqueue(19);
  qu.enqueue(32);
  qu.enqueue(73);
  qu.enqueue(37);

  // qu.dequeue();
  print(qu.isEmpty());
  // qu.printList();
}
