import 'dart:math';

import 'package:dart_algorithms/dart_algorithms.dart' show bubbleSort;
import 'package:test/test.dart';

class TestBed {
  List dataStore;
  int length;
  int times;
  Function sortFn;
  bool auto;

  TestBed(this.length, this.sortFn, [this.auto = true, this.times = 1]) {
    if (auto) {
      sort();
    }
  }

  sort() {
    for (var i = 0; i < times; i++) {
      prepareData();
      print('Before sort:');
      print(this);
      sortFn(dataStore, swap);
      print('After sort:');
      print(this);
    }
  }

  clear() {
    dataStore?.clear();
  }

  insert(element) {
    dataStore?.add(element);
  }

  prepareData() {
    Random random = new Random();
    dataStore = new List.generate(length, (index) {
      return (random.nextDouble() * length + 1).floor();
    });
  }

  swap(List arr, index1, index2) {
    var temp = arr[index1];
    arr[index1] = arr[index2];
    arr[index2] = temp;
  }

  String toString() {
    return dataStore.toString();
  }
}

main() {
  test('bubble sort', () {
    new TestBed(20, bubbleSort);
  });
}
