class Node {
  int? data;
  Node? next;

  Node(int this.data);
}

Node? head;
Node? tail;

void addAtEnd(int data) {
  Node newNode = Node(data);
  if (head == null) {
    head = newNode;
    tail = newNode;
  } else {
    tail!.next = newNode;
    tail = newNode;
  }
}

void addAtStart(int data) {
  Node newNode = Node(data);
  if (head == null) {
    head = newNode;
    tail = newNode;
  } else {
    newNode.next = head;
    head = newNode;
  }
}

int? midElement() {
  Node? slow = head;
  Node? fast = head;

  while (fast != null && fast.next != null) {
    fast = fast.next!.next;
    slow = slow!.next;
  }
  return slow!.data;
}

void deleteMiddleElement() {
  Node? slow = head;
  Node? fast = head;
  Node? prev;

  while (fast != null && fast.next != null) {
    fast = fast.next!.next;
    prev = slow;
    slow = slow!.next;
  }
  prev!.next = slow!.next;
  slow = null;
}

void display() {
  Node? current = head;
  if (current == null) {
    print('List is empty');
  }

  while (current != null) {
    print(current.data);
    current = current.next;
  }
}

void main(List<String> args) {
  addAtStart(10);
  addAtStart(20);
  addAtStart(22);
  addAtStart(32);
  addAtStart(45);
  addAtStart(54);
  addAtStart(16);
  deleteMiddleElement();
  display();
}
