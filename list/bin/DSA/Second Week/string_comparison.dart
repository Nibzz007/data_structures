void main(List<String> args) {
  print(compareStrings(string1, string2));
}

class Stack<String> {
  String? data;
  Stack? next;

  Stack(this.data);

  Stack? top;

void push(String data) {
  Stack? newNode = Stack(data);

  if (top == null) {
    top = newNode;
  } else {
    newNode.next = top;
    top = newNode;
  }
}

 void pop() {
  if (top == null) {
    print('Empty');
  }
  top = top?.next;
}

void display() {
  Stack? current = top;

  while (current != null) {
    print(current.data);
    current = current.next;
  }
}
}

String string1 = 'nibu';
String string2 = 'ahru';

bool compareStrings(String string1, String string2) {
  if (string1.length != string2.length) return false;

  final Stack<String> stack1 = Stack<String>(string1);
  final Stack<String> stack2 = Stack<String>(string2);

  for (int i = 0; i < string1.length; i++) {
    stack1.push(string1[i]);
    stack2.push(string2[i]);
  }
  return true;
}
