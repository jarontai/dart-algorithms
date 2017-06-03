class Queue<T> {
  List<T> _dataStore = <T>[];

  int get size => _dataStore.length;

  bool get isEmpty => _dataStore.isEmpty;

  enqueue(T element) {
    _dataStore.add(element);
  }

  T dequeue() {
    if (_dataStore.isNotEmpty) {
      return _dataStore.removeAt(0);
    }
    return null;
  }

  T get front {
    if (_dataStore.isNotEmpty) {
      return _dataStore.first;
    }
    return null;
  }

  T get end {
    if (_dataStore.isNotEmpty) {
      return _dataStore.last;
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
