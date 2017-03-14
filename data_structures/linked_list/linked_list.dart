class LinkedList<T> {
  final _LinkedNode<T> _head = new _LinkedNode<T>.header();
  _LinkedNode<T> get head => _head;

  _LinkedNode<T> find(T element) {
    var currentNode = _head;
    while (currentNode.element != element) {
      currentNode = currentNode.next;
    }
    return currentNode;
  }

  insert(T afterElement, T newElement) {
    var currentNode = _head;
    if (afterElement != null) {
      currentNode = find(afterElement);
    }
    var newNode = new _LinkedNode<T>(newElement);
    newNode.next = currentNode.next;
    currentNode.next = newNode;
  }

  _LinkedNode<T> _findPrevious(T element) {
    var currentNode = _head;
    while((currentNode.next != null) && (currentNode.next.element != element)) {
      currentNode = currentNode.next;
    }
    return currentNode;
  }

  remove(T element) {
    var previous = _findPrevious(element);
    if (previous.next != null) {
      previous.next = previous.next.next;
    }
  }

  display() {
    var currentNode = _head;
    while (currentNode.next != null) {
      currentNode = currentNode.next;
      print(currentNode.element);
    }
  }
}

class _LinkedNode<T> {
  final bool _header;
  bool get isHeader => _header;

  T element;
  _LinkedNode next;

  _LinkedNode(this.element) : _header = false;

  _LinkedNode.header() : _header = true;
}
