class Queue<T> {
  List<T> _dataStore = <T>[];

  bool isEmpty() => _dataStore.isEmpty;

  enqueue(T element) {
    _dataStore.add(element);
  }

  T dequeue() {
    if (_dataStore.isNotEmpty) {
      return _dataStore.removeAt(0);
    }
    return null;
  }

  T front() {
    if (_dataStore.isNotEmpty) {
      return _dataStore.first;
    }
    return null;
  }

  T back() {
    if (_dataStore.isNotEmpty) {
      return _dataStore.last;
    }
    return null;
  }

  clear() {
    _dataStore.clear();
  }

  String toString() {
    return _dataStore.reduce((element) {
      return element.toString();
    });
  }
}
