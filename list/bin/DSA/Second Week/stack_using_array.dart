// class CustomStack {
//   int top = -1;
//   List<int> stackList = [];

//   void push(int value) {
//     if (top == -1) {
//       top = 0;
//       stackList.add(value);
//     } else {
//       top++;
//       stackList.add(value);
//     }
//   }

//   int pop() {
//     if (top == -1) {
//       throw Exception("Stack is empty");
//     } else {
//       int poppedValue = stackList.removeAt(top);
//       //stackList[top];

//       top--;
//       return poppedValue;
//     }
//   }

//   int peek() {
//     if (top == -1) {
//       throw Exception("Stack is empty");
//     } else {
//       return stackList[top];
//     }
//   }

//   bool isEmpty() {
//     return top == -1;
//   }

//   int size() {
//     return top + 1;
//   }

//   void displayStack() {
//     for (int i = 0; i < stackList.length; i++) {
//       print(stackList[i]);
//     }
//   }
// }

// void main(List<String> args) {
//   CustomStack s = CustomStack();
//   s.push(10);
//   s.push(2);
//   s.push(6);
//   s.push(23);
//   s.push(66);

//   // s.displayStack();
//   s.pop();

//   // print(s.peek());
//   s.displayStack();
//   // print(s.size());
// }

class Stack {
  List<int> s = [];

  bool isEmpty() {
    return s.isEmpty;
  }

  int size() {
    return s.length;
  }

  void push(int data) {
    s.add(data);
  }

  int pop(){
    if(s.isEmpty){
      print('Stack is empty');
    }
    return s.removeLast();
  }

  int peek() {
    if(s.isEmpty){
      print('Stack is empty');
    }
    return s.last;
  }

  void printList() {
    for(int i = 0; i < s.length; i++){
      print(s[i]);
    }
  }
}

void main(List<String> args) {
  Stack st = Stack();
  st.push(10);
  st.push(23);
  st.push(64);
  st.push(35);
  st.pop();
  //print(st.peek());
  st.printList();
}
