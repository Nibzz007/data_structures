class Node {
  String value;
  Node? next;
  Node(this.value);
}

class LinkedList {
  Node? top;

  void insert(String value) {
    Node newNode = Node(value);
    newNode.next = top;
    top = newNode;
  }

  bool isEmpty() {
    return top == null;
  }

  String? pop() {
    if (isEmpty()) {
      return null;
    }

    String value = top!.value;
    top = top?.next;
    return value;
  }
}

bool isBalanced(String input) {
  LinkedList stack = LinkedList();

  for (int i = 0; i < input.length; i++) {
    String current = input[i];

    if (current == '(' || current == '{' || current == '[') {
      stack.insert(current);
    } else if (current == ')' || current == '}' || current == ']') {
      String? top = stack.pop();

      if (top == null) {
        return false;
      }

      if ((current == ')' && top != '(') ||
          (current == '}' && top != '{') ||
          (current == ']' && top != '[')) {
        return false;
      }
    }
  }

  return stack.isEmpty();
}

void main() {
  print(isBalanced("(a*b) + c")); // true
  print(isBalanced("((a*b) + c)")); // true
  print(isBalanced(")a*b(")); // false
  print(isBalanced("(a*b]")); // false
}
