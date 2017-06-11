class DoublyLinkedList<T> {
  final _LinkedNode<T> _head = new _LinkedNode<T>.header();
  _LinkedNode<T> get head => _head;

  _LinkedNode<T> find(T element) {
    var currentNode = _head;
    while (currentNode.element != element) {
      currentNode = currentNode.next;
    }
    return currentNode;
  }

  _LinkedNode<T> findLast() {
    var currentNode = _head;
    while (currentNode.next != null) {
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
    newNode.prev = currentNode;
    currentNode.next = newNode;
  }

  remove(T element) {
    var currentNode = find(element);
    if (currentNode.prev != null) {
      currentNode.prev.next = currentNode.next;
      currentNode.next.prev = currentNode.prev;
      currentNode.prev = null;
      currentNode.next = null;
    }
  }

  display({bool reverse : false}) {
    var currentNode = reverse ? findLast() : _head;
    if (reverse) {
      while (currentNode.prev != null) {
        print(currentNode.element);
        currentNode = currentNode.prev;
      }
    } else {
      while (currentNode.next != null) {
        currentNode = currentNode.next;
        print(currentNode.element);
      }
    }
  }
}

class _LinkedNode<T> {
  final bool _header;
  bool get isHeader => _header;

  T element;
  _LinkedNode next;
  _LinkedNode prev;

  _LinkedNode(this.element) : _header = false;

  _LinkedNode.header() : _header = true;
}
