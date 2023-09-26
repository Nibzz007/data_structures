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
  
  void sortStack(Stack s) {
    if(s.isEmpty()){
      return;
    }

    int x = s.pop();
    sortStack(s);

    Stack temp = Stack();

    while(!s.isEmpty() &&s.peek() > x) {
      temp.push(s.pop());
    }

    s.push(x);

    while(!temp.isEmpty()){
      s.push(temp.pop());
    }
  }
}

void main(List<String> args) {
  Stack s = Stack();
  s.push(10);
  s.push(3);
  s.push(15);
  s.push(7);
  s.push(20);

  s.sortStack(s);
  while(!s.isEmpty()){
    print(s.pop());
  }
}
