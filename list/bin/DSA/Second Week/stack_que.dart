void main(List<String> args) {
  String st = removeHash(str1);
  String st1 = removeHash(str2);
  if (st == st1) {
    print('Strings are equal');
  } else {
    print('Strings are not equal');
  }

  //printArray();
}

class Stack {
  dynamic data;
  Stack? next;

  Stack(this.data);
}

Stack? top;

void push(dynamic data) {
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
    print('empty');
  }
  top = top?.next;
}

void printArray() {
  Stack? current = top;

  while (current != null) {
    print(current.data);
    current = current.next;
  }
}

String str1 = 'ab#c';
String str2 = 'Ab#c';

dynamic removeHash(str) {
  for (var i = 0; i < str.length; i++) {
    if (str[i] == '#') {
      pop();
    } else {
      push(str[i]);
    }
  }
  return str;
}
