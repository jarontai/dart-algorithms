class Stack<T> {
  List<T> _dataStore = <T>[];

  int get length => _dataStore.length;

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
}
