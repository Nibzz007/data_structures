class Node {
  int? data;
  Node? next;

  Node(int this.data);
}

Node? head;
Node? tail;

void addElementAtEnd(int data) {
  Node newNode = Node(data);
  if(head == null) {
    head = newNode;
    tail = newNode;
  } else {
    tail!.next = newNode;
    tail = newNode;
  }
}

void addElementAtStart(int data) {
  Node newNode = Node(data);
  if(head == null) {
    head = newNode;
    tail = newNode;
  } else {
    newNode.next = head;
    head = newNode;
  }
}

int? middleELement() {
  Node? slow = head;
  Node? fast = head;

  while(fast !=null && fast.next!=null){
    fast = fast.next!.next;
    slow = slow!.next;
  }
  return slow!.data;
}
