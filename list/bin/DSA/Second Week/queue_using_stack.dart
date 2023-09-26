// class Stack {
//   List<int> stack = [];
//   void push(int data) {
//     stack.add(data);
//   }

//   int pop() {
//     if(stack.isEmpty) {
//       throw Exception('Stack is empty');
//     }
//     return stack.removeLast();
//   }

//   int peek() {
//     return stack.removeLast();
//   }

//   int size() {
//     return stack.length;
//   }

//   bool isEmpty() {
//     return stack.isEmpty;
//   }
// }

// import 'stack.dart';

// class QueueUsingStack{
//   Stack s1 = Stack();
//   Stack s2 = Stack();

//   void enqueue(int x) {
//     while(!s1.isEmpty()) {
//       s2.push(s1.pop());
//     }

//     s1.push(x);

//     while(!s2.isEmpty()) {
//       s1.push(s2.pop());
//     }
//   }

//   int dequeue() {
//     if(s1.isEmpty()) {
//       throw Exception('Queue is empty');
//     }

//     int x = s1.peek();
//     s1.pop();
//     return x;
//   }
// }

// void main(List<String> args) {
//   QueueUsingStack q = QueueUsingStack();

//   q.enqueue(1);
//   q.enqueue(4);
//   q.enqueue(9);
//   q.enqueue(5);
//   print(q.dequeue());
//   print(q.dequeue());
// }



class Stack {
  List<int> arr = [];

  void push(int data) {
    arr.add(data);
  }

  int pop() {
    if (arr.isEmpty) {
      print('Stack underflow');
    }
    return arr.removeLast();
  }

  int peekq() {
    return arr.elementAt(arr.length-1);
  }

  bool isEmpty() {
    return arr.isEmpty;
  }

  int size() {
    return arr.length;
  }

 void displayq() {
    for (int i = 0; i < arr.length; i++) {
      print(arr[i]);
    }
  }
}

class QueueUsingStack1{
  Stack stack = Stack();
   void enqueue(int data) {
    stack.push(data);
   }

   int dequeue() {
    if(stack.isEmpty()){
      print('Queue is empty');
    }

    if(stack.size() == 1){
      return stack.pop();
    }

    int x = stack.pop();
    int result = dequeue();
    stack.push(x);
    return result;
   }
   
   void d(){
    stack.displayq();
   }
}

void main(List<String> args) {
  QueueUsingStack1 q = QueueUsingStack1();
  q.enqueue(10);
  q.enqueue(20);
  q.enqueue(30);
  q.enqueue(40);
  q.dequeue();
  q.dequeue();
  q.d();
}
