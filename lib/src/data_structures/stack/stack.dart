class Stack<T> {
  List<T> _dataStore = <T>[];

  int get size => _dataStore.length;

  bool get isEmpty => _dataStore.isEmpty;

  push(T element) {
    _dataStore.insert(0, element);
  }

  T pop() {
    if (_dataStore.isNotEmpty) {
      return _dataStore.removeAt(0);
    }
    return null;
  }

  T peek() {
    if (_dataStore.isNotEmpty) {
      return _dataStore.elementAt(0);
    }
    return null;
  }

  clear() {
    _dataStore.clear();
  }

  String toString() {
    return _dataStore.toString();
  }
}
