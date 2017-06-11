class LinkedList<T> {
  final _LinkedNode<T> _head = new _LinkedNode<T>.header();

  _LinkedNode<T> get head => _head;

  int _length = 0;

  int get size => _length;

  bool get isEmpty => _length == 0;

  _LinkedNode<T> find(T element) {
    var current = _head;
    while (current.element != element) {
      current = current.next;
    }
    return current;
  }

  append(T element) {
    var current = _head;
    while (current.next != null) {
      current = current.next;
    }

    var newElement = new _LinkedNode(element);
    current.next = newElement;
    _length++;
  }

  insert(T afterElement, T newElement) {
    var current = _head;
    if (afterElement != null) {
      current = find(afterElement);
    }
    var newNode = new _LinkedNode<T>(newElement);
    newNode.next = current.next;
    current.next = newNode;
    _length++;
  }

  _LinkedNode<T> _findPreviousNode(T element) {
    var current = _head;
    while((current.next != null) && (current.next.element != element)) {
      current = current.next;
    }
    return current;
  }

  remove(T element) {
    var previous = _findPreviousNode(element);
    if (previous.next != null) {
      previous.next = previous.next.next;
      _length--;
    }
  }

  int indexOf(T element) {
    int index = -1;
    var current = _head;
    while (current.next != null) {
      index++;
      if (current.next.element == element) {
        return index;
      }
      current = current.next;
    }
    return -1;
  }

  T removeAt(int position) {
    if (position > -1 && position < _length) {
      var index = 0;
      var previous = _head;
      var current = _head.next;
      while (current != null) {
        if (index == position) {
          previous.next = current.next;
          return current.element;
        }
        index++;
        previous = current;
        current = current.next;
      }
    }
    return null;
  }

  display() {
    var current = _head;
    while (current.next != null) {
      current = current.next;
      print(current.element);
    }
    print('');
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
