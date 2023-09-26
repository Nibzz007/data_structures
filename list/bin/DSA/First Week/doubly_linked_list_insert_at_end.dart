void main(List<String> args) {
  addAtEnd(10);
  addAtEnd(20);
  addAtEnd(30);
  addAtEnd(40);
  display();
}

class Node {
  int? data;
  Node? next;
  Node? previous;

  Node(int this.data);
}

Node? head;
Node? tail;

void addAtEnd(int data) {
  Node newNode = Node(data);

  if (head == null) {
    head = newNode;
    tail = newNode;
    head?.previous = null;
    tail?.next = null;
  } else {
    tail?.next = newNode;
    newNode.previous = tail;
    newNode.next = null;
    tail = newNode;
  }
}

void display() {
  Node? current = head;

  if(current == null) {
    print('List is empty');
    return;
  }

  while(current != null) {
    print(current.data);
    current = current.next;
  }
}
