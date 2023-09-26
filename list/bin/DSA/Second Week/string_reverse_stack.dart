void main(List<String> args) {
  String str = 'nibu';
  revString(str);
  display();
}

class Stack {
  String? data;
  Stack? next;

  Stack(String this.data);
}

Stack? top;

void push(String data) {
  Stack newNode = Stack(data);

  if (top == null) {
    top = newNode;
  } else {
    newNode.next = top;
    top = newNode;
  }
}

String pop(String str) {
  if (top == null) {
    print('Stack Underflow');
  }
  top = top?.next;
  return str;
}

void display() {
  Stack? current = top;

  while (current != null) {
    print(current.data);
    current = current.next;
  }
}

String revString(String str) {
  Stack? temp = top;
  for(int i= 0; i <str.length; i++){
    push(str[i]);
  }

  var revStr = '';
  while(temp !=null){
    revStr = revStr + pop(str);
  }
  return revStr;
}
