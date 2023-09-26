void main(List<String> args) {
  enqueue(2);
  enqueue(7);
  enqueue(9);
  enqueue(3);
  print('Queue after ENQUEUE');
  display();
  dequeue();
  dequeue();
  print('Queue after DEQUEUE');
  display();
}

class Queue {
  int? data;
  Queue? next;

  Queue(int this.data);
}

Queue? front;
Queue? rear;

void enqueue(int data) {
  Queue newNode = Queue(data);
  if(rear == null) {
    front = rear = newNode;
  } else {
    rear?.next = newNode;
    rear = newNode;
  }
}

void dequeue() {
  if(front == null) {
    print('List is empty');
    rear = null;
  }
  front = front?.next;
}

void display() {
  Queue? current = front;

  while(current != null) {
    print(current.data);
    current = current.next;
  }
}
