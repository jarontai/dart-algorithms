import 'dart:math';

import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

class TestBed {
  List<int> dataStore;
  int length;
  int times;
  Function sortFn;
  bool auto;

  TestBed(this.length, this.sortFn, {this.auto = false, this.times = 1}) {
    if (auto) {
      sort();
    }
  }

  sort() {
    DateTime start = new DateTime.now();
    for (var i = 0; i < times; i++) {
      prepareData();
      dataStore = sortFn(dataStore, swap);
    }
    var costTime = new DateTime.now().difference(start).inMilliseconds;
    print('${dataStore.length} items costs : $costTime ms');
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

  bool check() {
    sort();
    var prev = -1;
    for (var i in dataStore) {
      if (i >= prev) {
        prev = i;
      } else {
        return false;
      }
    }
    return true;
  }

  String toString() {
    return dataStore.toString();
  }
}

main() {

  group('Basic sort -', () {
    test('bubble sort', () {
      expect(new TestBed(30000, bubbleSort).check(), equals(true));
    });

    test('selection sort', () {
      expect(new TestBed(30000, selectionSort).check(), equals(true));
    });

    test('insertion sort', () {
      expect(new TestBed(30000, insertionSort).check(), equals(true));
    });
  });

  group('Advanced sort -', () {
    test('shell sort', () {
      expect(new TestBed(30000, shellSort).check(), equals(true));
    });

    test('merge sort', () {
      expect(new TestBed(30000, mergeSort).check(), equals(true));
    });

    test('quick sort', () {
      expect(new TestBed(30000, quickSort).check(), equals(true));
    });
  });
}
