void main(List<String> args) {
  addAtStart(10);
  addAtStart(20);
  addAtStart(30);
  addAtStart(40);
  display();
}

class Node {
  int? data;
  Node? next;
  Node? previous;

  Node(int data) {
    this.data = data;
  }
}

Node? head = null;
Node? tail = null;

// Add a new Node

void addAtStart(int data) {
  Node newNode = Node(data);

  // If the list is empty

  if (head == null) {
    head = newNode;
    tail = newNode;
    head?.previous = null;
    tail?.next = null;
  }

  // Add a new Node as new Head of the list

  else {
    head?.previous = newNode;
    newNode.next = head;
    newNode.previous = null;
    head = newNode;
  }
}

// Function to display the list

void display() {
  Node? current = head;

  if(current == null) {
    print("List is empty");
    return;
  }
  print("Linked list is : ");

  while(current != null) {
    print(current.data);
    current = current.next;
  }
}
