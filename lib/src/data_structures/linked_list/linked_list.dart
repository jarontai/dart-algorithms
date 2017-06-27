class LinkedList<T> {
  final _LinkedNode<T> _head = new _LinkedNode<T>.header();

  _LinkedNode<T> get head => _head.next;

  int _size = 0;

  int get size => _size;

  bool get isEmpty => _size == 0;

  append(T element) {
    var current = _head;
    while (current.next != null) {
      current = current.next;
    }

    var newElement = new _LinkedNode(element);
    current.next = newElement;
    _size++;
  }

  T removeAt(int position) {
    if (position > -1 && position < _size) {
      var index = 0;
      var previous = _head;
      var current = _head.next;
      while (current != null) {
        if (index == position) {
          _size--;
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

  bool insert(int position, T newElement) {
    if (position > -1 && position < _size) {
      var index = 0;
      var previous = _head;
      var current = _head.next;
      while (current != null) {
        if (index == position) {
          var newNode = new _LinkedNode<T>(newElement);
          newNode.next = previous.next;
          previous.next = newNode;
          _size++;
          return true;
        }
        index++;
        previous = current;
        current = current.next;
      }
    }
    return false;
  }

  int indexOf(T element) {
    int index = 0;
    var current = _head.next;
    while (current != null) {
      if (current.element == element) {
        return index;
      }
      current = current.next;
      index++;
    }
    return -1;
  }

  T remove(T element) {
    var index = indexOf(element);
    return removeAt(index);
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
