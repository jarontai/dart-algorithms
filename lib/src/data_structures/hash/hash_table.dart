import '../linked_list/linked_list.dart';

class HashTable<K, V> {
  Map<int, LinkedList<HashItem<K, V>>> _dataStore =
      <int, LinkedList<HashItem<K, V>>>{};

  int _hash(K key) {
    var hash = 0;
    var keyStr = key.toString();
    for (var i = 0; i < keyStr.toString().length; i++) {
      hash += keyStr.codeUnitAt(i);
    }
    return hash % 37;
  }

  // int _betterHash(K key) {
  //   var hash = 5381;
  //   var keyStr = key.toString();
  //   for (var i = 0; i < keyStr.length; i++) {
  //     hash = hash * 33 + keyStr.codeUnitAt(i);
  //   }
  //   return hash % 1013;
  // }

  void put(K key, V value) {
    var position = _hash(key);
    if (!_dataStore.containsKey(position)) {
      _dataStore[position] = new LinkedList<HashItem<K, V>>();
    }
    _dataStore[position].append(new HashItem(key, value));
  }

  bool remove(K key) {
    var position = _hash(key);
    if (_dataStore.containsKey(position)) {
      var list = _dataStore[position];
      var current = list.head;
      while (current != null) {
        if (current?.element?.key == key) {
          list.remove(current.element);
          return true;
        }
        current = current.next;
      }
    }
    return false;
  }

  V get(K key) {
    var position = _hash(key);
    if (_dataStore.containsKey(position)) {
      var list = _dataStore[position];
      var current = list.head;
      while (current != null) {
        if (current?.element?.key == key) {
          return current.element.value;
        }
        current = current.next;
      }
    }
    return null;
  }
}

class HashItem<K, V> {
  K key;
  V value;

  HashItem(this.key, this.value);

  int get hashCode {
    int result = 17;
    result = 37 * result + key.hashCode;
    result = 37 * result + value.hashCode;
    return result;
  }

  bool operator ==(other) {
    if (other is! HashItem) return false;
    HashItem valuePair = other;
    return (valuePair.key == key && valuePair.value == value);
  }

  String toString() {
    return '[$key - $value]';
  }
}
