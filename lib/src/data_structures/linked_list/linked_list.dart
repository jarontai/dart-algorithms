class LinkedList<T> {
  Node<T> head;

  LinkedList();

  int _size = 0;

  int get size => _size;

  bool get isEmpty => _size == 0;

  append(T element) {
    var node = new Node(element);
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
  }

  T removeAt(int position) {
    if (position > -1 && position < _size) {
      var index = 0;
      var previous = head;
      var current = head;
      if (position == 0) {
        head = current.next;
      } else {
        while (index++ < position) {
          previous = current;
          current = current.next;
        }
        previous.next = current.next;
      }
      _size--;
      return current.element;
    }
    return null;
  }

  bool insert(int position, T element) {
    if (position >= 0 && position < _size) {
      var node = new Node(element);
      var index = 0;
      var previous = head;
      var current = head;
      if (position == 0) {
        node.next = current;
        head = node;
      } else {
        while (index++ < position) {
          previous = current;
          current = current.next;
        }
        node.next = current;
        previous.next = node;
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

class Node<T> {
  T element;
  Node next;

  Node(this.element);
}
