import 'dart:collection';

class Node {
  int value;
  Node? left;
  Node? right;

  Node(this.value) {
    left = null;
    right = null;
  }
}

class BinarySearchTree {
  Node? root;

  BinarySearchTree() {
    root = null;
  }

  bool isEmpty() {
    return root == null;
  }

  void insert(int value) {
    Node? newNode = Node(value);
    if (isEmpty()) {
      root = newNode;
    } else {
      insertNode(root, newNode);
    }
  }

  void insertNode(Node? root, Node? newNode) {
    if (newNode!.value < root!.value) {
      if (root.left == null) {
        root.left = newNode;
      } else {
        insertNode(root.left, newNode);
      }
    } else {
      if (root.right == null) {
        root.right = newNode;
      } else {
        insertNode(root.right, newNode);
      }
    }
  }

  bool search(Node? root, int value) {
    if (root == null) {
      return false;
    }
    if (root.value == value) {
      return true;
    } else if (value < root.value) {
      return search(root.left, value);
    } else {
      return search(root.right, value);
    }
  }

  int min(Node? root) {
    if (root!.left == null) {
      return root.value;
    } else {
      return min(root.left);
    }
  }

  int max(Node? root) {
    if (root!.right == null) {
      return root.value;
    } else {
      return max(root.right);
    }
  }

  void delete(int value) {
    root = deleteNode(root!, value);
  }

  Node? deleteNode(Node? root, int value) {
    if (root == null) {
      return root;
    }
    if (value < root.value) {
      root.left = deleteNode(root.left, value);
    } else if (value > root.value) {
      root.right = deleteNode(root.right, value);
    } else {
      if (root.left == null && root.right == null) {
        return null;
      }
      if (root.left == null) {
        return root.right;
      } else if (root.right == null) {
        return root.left;
      }
      root.value = min(root.right);
      root.right = deleteNode(root.right, root.value);
    }
    return root;
  }

  void inOrder(Node? root) {
    if (root != null) {
      inOrder(root.left);
      print(root.value);
      inOrder(root.right);
    }
  }

  void preOrder(Node? root) {
    if (root != null) {
      print(root.value);
      preOrder(root.left);
      preOrder(root.right);
    }
  }

  void postOrder(Node? root) {
    if (root != null) {
      postOrder(root.left);
      postOrder(root.right);
      print(root.value);
    }
  }

  void levelOrder() {
    Queue<Node?> queue = Queue<Node>();
    queue.add(root!);
    while (queue.isNotEmpty) {
      Node? curr = queue.removeFirst();
      print(curr!.value);
      if (curr.left != null) {
        queue.add(curr.left);
      }
      if (curr.right != null) {
        queue.add(curr.right);
      }
    }
  }

  void _printNode(Node? node, [String prefix = '']) {
    if (node == null) return;

    final newPrefix = prefix + '   ';

    _printNode(node.right, newPrefix);
    print('$prefix${node.value}');
    _printNode(node.left, newPrefix);
  }
}

void main(List<String> args) {
  BinarySearchTree b = BinarySearchTree();
  b.insert(10);
  b.insert(12);
  b.insert(6);
  b.insert(30);
  b.insert(20);
  b.insert(7);
  b.delete(10);

  b._printNode(b.root);
}
