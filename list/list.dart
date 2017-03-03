// 因为List是Dart内置类，所以我们这里使用ADTList
// We use ADTList here cause dart sdk has build-in List class.

class ADTList<T> {
  int _length = 0;
  int _pos = 0;
  List<T> _dataStore = <T>[];

  int get length => _length;
  int get pos => _pos;


  void append(T element) {
    _length++;
    _dataStore.add(element);
  }

  int find(T element) {
    return _dataStore.indexOf(element);
  }

  bool remove(T element) {
    int foundAt = find(element);
    if (foundAt > -1) {
      _dataStore.removeAt(foundAt);
      _length--;
      return true;
    }
    return false;
  }

  String toString() {
    return _dataStore.toString();
  }

  // TODO
}
