void main(List<String> args) {
  Stack s = Stack();
  s.push(1);
  s.push(3);
  s.push(6);
  s.push(10);
  s.push(4);
  //s.push(7);
  s.mid();
  // print('Array after PUSH');
  // s.display();
  // s.pop();
  // s.pop();
  // print('Array after POP');
   s.display();
}

class Node {
  int data;
  Node? next;

  Node(this.data);
}



class Stack {
  Node? top;
  void push(int data) {
    Node newNode = Node(data);

    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  int pop() {
    if (top == null) {
      print('Node Underflow');
    }
    top = top?.next;
    return top!.data;
  }

  bool isEmpty() {
    return top == null;
  }

  int peek() {
    if (top != null) {
      return top!.data;
    } else {
      print('Stack is Empty');
      return -1;
    }
  }

  int mid() {
    Node? slow = top;
    Node? fast = top;
    Node? prev = top;
    while(fast != null && fast.next != null) {
      fast = fast.next!.next;
      prev = slow;
      slow = slow!.next;
    }
    prev!.next = slow!.next;
    return slow.data;
  }

  void display() {
    Node? current = top;

    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  int size() {
    int count = 0;
    Node? current = top;
    while (current != null) {
      count++;
      current = current.next;
    }
    return count;
  }
}

// class Node {
//   String data;
//   Node? next;

//   Node(this.data);
// }

// Node? top;

// class Stack {
//   void push(String data) {
//     Node newNode = Node(data);

//     if (top == null) {
//       top = newNode;
//     } else {
//       newNode.next = top;
//       top = newNode;
//     }
//   }

//   String pop() {
//     if (top == null) {
//       print('Stack underflow');
//     }
//     top = top!.next;
//     return top!.data;
//   }

//   String peek() {
//     if (top == null) {
//       print('Stack is empty');
//       return '';
//     } else {
//       return top!.data;
//     }
//   }

//   int size() {
//     Node? temp = top;
//     int count = 0;
//     while (temp != null) {
//       print(temp.data);
//       temp = temp.next;
//       count++;
//     }
//     return count;
//   }

//   bool isEmpty() {
//     return top == null;
//   }

//   static void display1() {
//     Node? temp = top;
//     while (temp != null) {
//       print(temp.data);
//       temp = temp.next;
//     }
//   }



//   bool stringComparison(String s1, String s2) {
//     if(s1.length != s2.length) {
//       return false;
//     }
//     Stack stack1 = Stack();
//     Stack stack2 = Stack();
//     for(int i = 0; i <s1.length; i++) {
//       stack1.push(s1[i]);
//       //stack2.push(s2[i]);
//     }
//     for(int j = 0; j <s2.length; j++) {
//       //stack1.push(s1[i]);
//       stack2.push(s2[j]);
//     }
//     while(!stack1.isEmpty() && !stack2.isEmpty()) {
//       if(stack1.pop() != stack2.pop()){
//         return false;
//       }
//     }
//     return stack1.isEmpty() && stack2.isEmpty();
//   }
//   }

  // bool stringComparison(String s1, String s2) {
    
  //   Stack stack1 = Stack();
  //   Stack stack2 = Stack();

  //   for (int i = 0; i < s1.length; i++) {
  //     stack1.push(s1[i]);
  //     stack2.push(s2[i]);
  //   }

  //   if (stack1 != stack2) {
  //     return false;
  //   } else {
  //     return true;
  //   }
  // }


// void main(List<String> args) {
//  Stack s = Stack();
//   String s1 = 'nibu';
//   String s2 = 'nibu';
//   //StringComp s = StringComp();
//   print(s.stringComparison(s1, s2));
//   // s.push('n');
//   // s.push('i');
//   // s.push('b');
//   // s.push('u');
//   // print(s.isEmpty());
//   //Stack.display1();
// }
