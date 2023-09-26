class Node {
  int data;
  Node? next;
  
  Node(this.data);
}


Node selectionSort(Node head) {
  Node current = head;
  while (current != null) {
    Node min = current;
    Node? ptr = current.next;
    while (ptr != null) {
      if (ptr.data < min.data) {
        min = ptr;
      }
      ptr = ptr.next;
    }
    int temp = current.data;
    current.data = min.data;
    min.data = temp;
    current = current.next!;
  }
  return head;
}

void main() {
  Node? head = Node(5);
  head.next = Node(3);
  head.next!.next = Node(8);
  head.next!.next!.next = Node(1);
  
  print("Before sorting:");
  Node? ptr = head;
  while (ptr != null) {
    print(ptr.data);
    ptr = ptr.next;
  }
  
  head = selectionSort(head);
  
  print("After sorting:");
  ptr = head;
  while (ptr != null) {
    print(ptr.data);
    ptr = ptr.next!;
  }
}
