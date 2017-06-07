class HashTable<K, V> {
  Map<int, V> _dataStore = <int, V>{};

  int _hash(K key) {
    var keyStr = key.toString();
    var hash = 0;
    for (var i = 0; i < keyStr.toString().length; i++) {
      hash += keyStr.codeUnitAt(i);
    }
    return hash % 37;
  }

  void put(K key, V value) {
    var position = _hash(key);
    _dataStore[position] = value;
    print('$position - $key');
  }

  V remove(K key) {
    var position = _hash(key);
    return _dataStore.remove(position);
  }

  V get(K key) {
    return _dataStore[_hash(key)];
  }
}
