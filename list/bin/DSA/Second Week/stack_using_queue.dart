import 'dart:collection';

class StackUsingQueue {
  Queue<int> _queue1 = Queue();
  Queue<int> _queue2 = Queue();

  void push(int value) {
    _queue1.add(value);
  }

  int pop() {
    if (_queue1.isEmpty) {
      throw Exception('Stack is empty');
    }

    while (_queue1.length > 1) {
      _queue2.add(_queue1.removeFirst());
    }

    int value = _queue1.removeFirst();

    Queue<int> temp = _queue1;
    _queue1 = _queue2;
    _queue2 = temp;

    return value;
  }

  int peek() {
    if (_queue1.isEmpty) {
      throw Exception('Stack is empty');
    }

    while (_queue1.length > 1) {
      _queue2.add(_queue1.removeFirst());
    }

    int value = _queue1.first;

    _queue2.add(_queue1.removeFirst());

    Queue<int> temp = _queue1;
    _queue1 = _queue2;
    _queue2 = temp;

    return value;
  }

  bool isEmpty() {
    return _queue1.isEmpty;
  }
}

void main() {
  StackUsingQueue stack = StackUsingQueue();

  stack.push(1);
  stack.push(2);
  stack.push(3);
  print(stack.pop());
  print(stack.pop());
  print(stack.pop());
  print(stack.pop());
  print(stack.isEmpty());
}
