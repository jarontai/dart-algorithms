class DoublyLinkedList<T> {
  final DoublyLinkedNode<T> _head = new DoublyLinkedNode<T>.header();

  DoublyLinkedNode<T> _tail;

  DoublyLinkedNode<T> get head => _head.next;

  DoublyLinkedNode<T> get tail => _tail ?? _head.next;

  int _size = 0;

  int get size => _size;

  bool get isEmpty => _size == 0;

  append(T element) {
    var current = _head;
    while (current.next != null) {
      current = current.next;
    }

    var newElement = new DoublyLinkedNode(element);
    current.next = newElement;
    newElement.prev = current;
    _size++;
    _tail = newElement;
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
          current.next?.prev = previous;
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
          var newNode = new DoublyLinkedNode<T>(newElement);
          newNode.next = previous.next;
          newNode.prev = previous;
          previous.next = newNode;
          _size++;

          if (newNode.next == null) {
            _tail = newNode;
          }

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

class DoublyLinkedNode<T> {
  final bool _header;
  bool get isHeader => _header;

  T element;
  DoublyLinkedNode prev;
  DoublyLinkedNode next;

  DoublyLinkedNode(this.element) : _header = false;

  DoublyLinkedNode.header() : _header = true;
}
