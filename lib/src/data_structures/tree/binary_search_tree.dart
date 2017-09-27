class BinarySearchTree<T extends Comparable> {
  TreeNode<T> root;

  insert(T key) {
    var newNode = new TreeNode<T>(key);

    if (root == null) {
      root = newNode;
    } else {
      _insertNode(root, newNode);
    }
  }

  _insertNode(TreeNode node, TreeNode newNode) {
    if (newNode.key < node.key) {
      if (node.left == null) {
        node.left = newNode;
      } else {
        _insertNode(node.left, newNode);
      }
    } else {
      if (node.right == null) {
        node.right = newNode;
      } else {
        _insertNode(node.right, newNode);
      }
    }
  }

  inOrderTraverse(void callback(T key)) {
    _inOrderTraverse(root, callback);
  }

  _inOrderTraverse(TreeNode node, void callback(T key)) {
    if (node != null) {
      _inOrderTraverse(node.left, callback);
      if (callback !=null) {
        callback(node.key);
      }
      _inOrderTraverse(node.right, callback);
    }
  }

  preOrderTraverse(void callback(T key)) {
    _preOrderTraverse(root, callback);
  }

  _preOrderTraverse(TreeNode node, void callback(T key)) {
    if (node != null) {
      if (callback !=null) {
        callback(node.key);
      }
      _inOrderTraverse(node.left, callback);
      _inOrderTraverse(node.right, callback);
    }
  }

  postOrderTraverse(void callback(T key)) {
    _postOrderTraverse(root, callback);
  }

  _postOrderTraverse(TreeNode node, void callback(T key)) {
    if (node != null) {
      _inOrderTraverse(node.left, callback);
      _inOrderTraverse(node.right, callback);
      if (callback !=null) {
        callback(node.key);
      }
    }
  }

  T min() {
    return _min(root);
  }

  T _min(TreeNode node) {
    if (node != null) {
      while (node != null && node.left != null) {
        node = node.left;
      }
      return node.key;
    }
    return null;
  }

  T max() {
    return _max(root);
  }

  T _max(TreeNode node) {
    if (node != null) {
      while (node != null && node.right != null) {
        node = node.right;
      }
      return node.key;
    }
    return null;
  }

  bool search(T key) {
    return _search(root, key);
  }

  bool _search(TreeNode node, T searchKey) {
    if (node == null) {
      return false;
    }

    var compareResult = searchKey.compareTo(node.key);
    if (compareResult < 0) {
      return _search(node.left, searchKey);
    } else if (compareResult > 0) {
      return _search(node.right, searchKey);
    }
    return true;
  }

  remove(T key) {
    root = _remove(root, key);
  }

  TreeNode _remove(TreeNode node, T searchKey) {
    if (node == null) {
      return null;
    }

    var compareResult = searchKey.compareTo(node.key);
    if (compareResult < 0) {
      node.left = _remove(node.left, searchKey);
      return node;
    } else if (compareResult > 0) {
      node.right = _remove(node.right, searchKey);
      return node;
    } else {
      // leaf node
      if (node.left == null && node.right == null) {
        node = null;
        return node;
      }

      // node with 1 child
      if (node.left == null) {
        node = node.right;
        return node;
      } else if (node.right == null) {
        node = node.left;
        return node;
      }

      // 2 children
      var minNode = _findMinNode(node.right);
      node.key = minNode.key;
      node.right = _remove(node.right, minNode.key);
      return node;
    }
  }

  TreeNode _findMinNode(TreeNode node) {
    while (node != null && node.left != null) {
      node = node.left;
    }
    return node;
  }
}

class TreeNode<T> {
  T key;
  TreeNode left;
  TreeNode right;

  TreeNode(this.key);
}
