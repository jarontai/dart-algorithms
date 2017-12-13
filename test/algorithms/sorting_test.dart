import 'dart:math';

import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

class TestBed {
  List dataStore;
  int length;
  int times;
  Function sortFn;
  bool auto;

  TestBed(this.length, this.sortFn, {this.auto = true, this.times = 1}) {
    if (auto) {
      sort();
    }
  }

  sort() {
    DateTime start = new DateTime.now();
    for (var i = 0; i < times; i++) {
      prepareData();
      if (times == 1) {
        print('Before sort:');
        print(this);
      }

      sortFn(dataStore, swap);

      if (times == 1) {
        print('After sort:');
        print(this);
      }
    }
    if (times > 1) {
      var costTime = new DateTime.now().difference(start).inMilliseconds;
      print('$times times cost: $costTime ms');
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

  group('Basic sort -', () {
    test('bubble sort', () {
      new TestBed(1000, bubbleSort, times: 1000);
    });

    test('selection sort', () {
      new TestBed(500, selectionSort, times: 10000);
    });

    test('insertion sort', () {
      new TestBed(500, insertionSort, times: 10000);
    });
  });

  group('Advanced sort -', () {
    test('shell sort', () {
      new TestBed(500, shellSort, times: 10000);
    });

    test('merge sort', () {
      new TestBed(500, mergeSort, times: 10000);
    });

    test('quick sort', () {
      new TestBed(500, quickSort, times: 10000);
    });
  });
}
