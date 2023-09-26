class Node {
  int data;
  Node? left;
  Node? right;

  Node(this.data);
}

class BinarySearchTree {
  Node? root;

  void insert(int data) {
    Node newNode = Node(data);

    if (root == null) {
      root = newNode;
      return;
    }

    Node? current = root;
    while (current != null) {
      if (data == current.data) {
        return;
      }
      if (data < current.data) {
        if (current.left == null) {
          current.left = newNode;
          return;
        }
        current = current.left;
      } else {
        if (current.right == null) {
          current.right = newNode;
          return;
        }
        current = current.right;
      }
    }
  }

  bool search(Node? root, int data) {
    if (root == null) {
      return false;
    }
    if (root.data == data) {
      return true;
    } else if (data < root.data) {
      return search(root.left, data);
    } else {
      return search(root.right, data);
    }
  }

  void inOrder(Node? root) {
    Node? current = root;
    if (current != null) {
      inOrder(current.left);
      print(current.data);
      inOrder(current.right);
    }
  }

  void preOrder(Node? root) {
    if (root != null) {
      print(root.data);
      preOrder(root.left);
      preOrder(root.right);
    }
  }

  void postOrder(Node? root) {
    if (root != null) {
      postOrder(root.left);
      postOrder(root.right);
      print(root.data);
    }
  }

  int min(Node? root) {
    if (root!.left == null) {
      return root.data;
    } else {
      return min(root.left);
    }
  }

  int max(Node? root) {
    if (root!.right == null) {
      return root.data;
    } else {
      return max(root.right);
    }
  }

  void delete(int data){
    root = deleteNode(root, data);
  }
  
  Node? deleteNode(Node? root, int data) {
    if(root == null){
      return root;
    }
    if(data < root.data){
      root.left = deleteNode(root.left, data);
    } else if (data > root.data){
      root.right = deleteNode(root.right, data);
    } else {
      //* Case 1: Node has no children
      if(root.left == null && root.right == null){
        return null;
      }
      //* Case 2: If node has one child
      if(root.left == null){
        return root.right;
      } else if(root.right == null){
        return root.left;
      }
      //* Case 3: If Node has 2 children
      //* Find the minumum value in the right subtree

      Node? minRight = root.right;
      while(minRight!.left != null){
        minRight = minRight.left;
      }
      // Replace the node to be deleted with the minimum value
      root.data = minRight.data;
      // Delete the minimum value node in the right subtree
      root.right = deleteNode(root.right, minRight.data);
    }
    return root;
  }

  

int findClosestValue(Node? root, int target) {
  int closestValue = root!.data;
  
  while (root != null) {
    if ((target - root.data).abs() < (target - closestValue).abs()) {
      closestValue = root.data;
    }
    
    if (target < root.data) {
      root = root.left;
    } else if (target > root.data) {
      root = root.right;
    } else {
      break;
    }
  }
  
  return closestValue;
}
}

void main(List<String> args) {
  BinarySearchTree tree = BinarySearchTree();
  tree.insert(10);
  tree.insert(12);
  tree.insert(6);
  tree.insert(30);
  tree.insert(20);
  tree.insert(7);
  tree.inOrder(tree.root);
}
