// 因为List是Dart内置类，所以我们这里使用ADTList
// We use ADTList here cause dart sdk has build-in List class.

class ADTList<T> {
  int _length = 0;
  int _position = 0;
  List<T> _dataStore = <T>[];

  int get length => _length;
  int get position => _position;

  append(T element) {
    _length++;
    _dataStore.add(element);
  }

  int find(T element) {
    return _dataStore.indexOf(element);
  }

  bool remove(T element) {
    var foundAt = find(element);
    if (foundAt > -1) {
      _dataStore.removeAt(foundAt);
      _length--;
      return true;
    }
    return false;
  }

  bool insert(T element, T after) {
    var insertPosition = find(after);
    if (insertPosition > -1) {
      _dataStore.insert(insertPosition, element);
      _length++;
      return true;
    }
    return false;
  }

  clear() {
    _dataStore.clear();
    _length = 0;
    _position = 0;
  }  

  bool contains(T element) {
    return _dataStore.contains(element);
  }

  String toString() {
    return _dataStore.toString();
  }
}
