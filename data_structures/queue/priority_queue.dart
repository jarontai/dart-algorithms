class PriorityQueue<T> {
  List<_QueueItem<T>> _dataStore = <_QueueItem<T>>[];

  int get size => _dataStore.length;

  bool get isEmpty => _dataStore.isEmpty;

  enqueue(T item, int priority) {
    _QueueItem queueItem = new _QueueItem(item, priority);
    bool added = false;
    for (int i = 0; i < _dataStore.length; i++) {
      if (priority < _dataStore[i].priority) {
        added = true;
        _dataStore.insert(i, queueItem);
        break;
      }
    }
    if (!added) {
      _dataStore.add(queueItem);
    }
  }

  T dequeue() {
    if (_dataStore.isNotEmpty) {
      return _dataStore.removeAt(0).item;
    }
    return null;
  }

  T get front {
    if (_dataStore.isNotEmpty) {
      return _dataStore.first.item;
    }
    return null;
  }

  T get end {
    if (_dataStore.isNotEmpty) {
      return _dataStore.last.item;
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

class _QueueItem<T> {
  T item;
  int priority;

  _QueueItem(this.item, this.priority);

  String toString() {
    return '$item - $priority';
  }
}
