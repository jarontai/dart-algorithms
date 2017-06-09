class LinkedList<T> {
  final _LinkedNode<T> _head = new _LinkedNode<T>.header();
  _LinkedNode<T> get head => _head;

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
  }

  insert(T afterElement, T newElement) {
    var current = _head;
    if (afterElement != null) {
      current = find(afterElement);
    }
    var newNode = new _LinkedNode<T>(newElement);
    newNode.next = current.next;
    current.next = newNode;
  }

  _LinkedNode<T> _findPrevious(T element) {
    var current = _head;
    while((current.next != null) && (current.next.element != element)) {
      current = current.next;
    }
    return current;
  }

  remove(T element) {
    var previous = _findPrevious(element);
    if (previous.next != null) {
      previous.next = previous.next.next;
    }
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
