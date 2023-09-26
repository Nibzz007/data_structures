import 'dart:collection';

class StackOneQueue {
  Queue q = Queue();

  void push(int data) {
    q.add(data);
  }

  // int pop() {
  //   if(q.isEmpty) {
  //     throw Exception('Stack is empty');
  //   }

  //   for(int i = 0; i < q.length - 1; i++) {
  //     int element = q.removeFirst();
  //     q.add(element);
  //   }

  //   return q.removeFirst();
  // }

  int pop(){
    if(q.isEmpty){
      throw Exception('empty');
    }

    return q.removeLast();
  }

  bool isEmpty() {
    return q.isEmpty;
  }

  int size() {
    return q.length;
  }
}
void main(List<String> args) {
  StackOneQueue s = StackOneQueue();

  s.push(10);
  s.push(30);
  s.push(50);
  s.push(70);

 // print(s.q);
  print(s.pop());
  print(s.pop());
  print(s.q);
}
