class DoublyLinkedList<T> {
  DoublyNode<T> head;
  DoublyNode<T> tail;

  DoublyLinkedList();

  int _size = 0;

  int get size => _size;

  bool get isEmpty => _size == 0;

  append(T element) {
    var node = new DoublyNode(element);
    var current = head;
    if (head == null) {
      head = node;
    } else {
      current = head;
      while (current.next != null) {
        current = current.next;
      }
      current.next = node;
    }
    _size++;
    tail = node;
  }

  T removeAt(int position) {
    if (position > -1 && position < _size) {
      var index = 0;
      var previous = head;
      var current = head;
      if (position == 0) {
        head = current.next;
        if (_size == 1) {
          tail = null;
        } else {
          head.prev = null;
        }
      } else if (position == _size - 1) {
        current = tail;
        tail = current.prev;
        tail.next = null;
      } else {
        while (index++ < position) {
          previous = current;
          current = current.next;
        }
        previous.next = current.next;
        current.next.prev = previous;
      }
      _size--;
      return current.element;
    }
    return null;
  }

  bool insert(int position, T element) {
    if (position >= 0 && position < _size) {
      var node = new DoublyNode(element);
      var index = 0;
      var previous = head;
      var current = head;
      if (position == 0) {
        if (head == null) {
          head = node;
          tail = node;
        } else {
          node.next = current;
          current.prev = node;
          head = node;
        }
      } else if (position == _size) {
        current = tail;
        current.next = node;
        node.prev = current;
        tail = node;
      } else {
        while (index++ < position) {
          previous = current;
          current = current.next;
        }
        node.next = current;
        current.prev = node;
        previous.next = node;
        node.prev = previous;
      }
      _size++;
      return true;
    }
    return false;
  }

  int indexOf(T element) {
    var index = 0;
    var current = head;
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

  String toString() {
    var current = head;
    var string = '';
    while (current != null) {
      string += current.element.toString() + (current.next != null ? '\n' : '');
      current = current.next;
    }
    return string;
  }
}

class DoublyNode<T> {
  T element;
  DoublyNode next;
  DoublyNode prev;

  DoublyNode(this.element);
}
