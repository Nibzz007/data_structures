class Node {
  int data;
  Node? next;
  
  Node(this.data);
}

class LinkedList {
  Node? head;

  void insert(int data) {
    if (head == null) {
      head = Node(data);
    } else {
      Node currentNode = head!;
      while (currentNode.next != null) {
        currentNode = currentNode.next!;
      }
      currentNode.next = Node(data);
    }
  }

  void bubbleSort() {
    if (head == null) {
      return;
    }

    bool swapped = true;
    while (swapped) {
      swapped = false;
      Node? current = head;
      Node? previous;

      while (current != null && current.next != null) {
        if (current.data > current.next!.data) {
          // Swap the nodes
          Node? next = current.next;
          current.next = next!.next;
          next.next = current;
          if (previous == null) {
            head = next;
          } else {
            previous.next = next;
          }
          previous = next;
          swapped = true;
        } else {
          previous = current;
          current = current.next;
        }
      }
    }
  }

  void printList() {
    Node? currentNode = head;
    while (currentNode != null) {
      print('${currentNode.data} -> ');
      currentNode = currentNode.next;
    }
    print('null');
  }
}

void main() {
  LinkedList list = LinkedList();
  list.insert(5);
  list.insert(3);
  list.insert(8);
  list.insert(1);
  list.insert(6);
  print('Original List:');
  list.printList();
  list.bubbleSort();
  print('Sorted List:');
  list.printList();
}
