// class Node {
//   int data;
//   Node? left, right;
//   Node(this.data);
// }

// bool isBST(Node? root, [int? minValue, int? maxValue]) {
//   if (root == null) {
//     return true;
//   }

//   // check if the current node's value is within the valid range
//   if ((minValue != null && root.data <= minValue) ||
//       (maxValue != null && root.data >= maxValue)) {
//     return false;
//   }

//   // recursively check if the left and right subtrees are BSTs
//   return isBST(root.left, minValue, root.data) &&
//          isBST(root.right, root.data, maxValue);
// }

// void main() {
//   // create a test tree
//   var root = Node(4);
//   root.left = Node(2);
//   root.right = Node(5);
//   root.left!.left = Node(1);
//   root.left!.right = Node(3);

//   // check if the tree is a BST
//   if (isBST(root, null, null)) {
//     print("The tree is a BST");
//   } else {
//     print("The tree is not a BST");
//   }
// }

// class Node {
//   int data;
//   Node? left, right;

//   Node(this.data) {
//     left = right = null;
//   }
// }

// Node? prev;

// bool isBSTUtil(Node? root) {
//   if (root != null) {
//     if (!isBSTUtil(root.left)) {
//       return false;
//     }

//     if (prev != null && root.data <= prev!.data) {
//       return false;
//     }

//     prev = root;

//     return isBSTUtil(root.right);
//   }

//   return true;
// }

// bool isBST(Node root) {
//   return isBSTUtil(root);
// }

// void main() {
//   Node root = Node(3);
//   root.left = Node(2);
//   root.right = Node(5);
//   root.left!.left = Node(1);
//   root.left!.right = Node(4);

//   if (isBST(root)) {
//     print("Is BST");
//   } else {
//     print("Not a BST");
//   }
// }

class Node {
  int data;
  Node? left, right;
  Node(this.data);
}

void main(List<String> args) {
  Node root = Node(4);
  root.left = Node(2);
  root.right = Node(5);
  root.left!.left = Node(1);
  root.right!.right = Node(3);

  if (isBst(root)) {
    print('Bst');
  } else {
    print('Not Bst');
  }
}

bool isBst(Node root) {
  List<int> arr = [];
  storeInOrder(root, arr);
  for (int i = 1; i < arr.length - 1; i++) {
    if (arr[i] < arr[i - 1]) {
      return false;
    }
  }
  return true;
}

void storeInOrder(Node? root, List<int> arr) {
  if (root == null) {
    return;
  }
  storeInOrder(root.left, arr);
  arr.add(root.data);
  storeInOrder(root.right, arr);
}
