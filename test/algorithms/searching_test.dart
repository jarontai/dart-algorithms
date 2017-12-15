import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

main() {
  test('sequential search', () {
    var arr = [9, 5, 4, 6, 1, 3, 2, 7, 8, 10];
    expect(sequentialSearch(arr, 9), equals(0));
    expect(sequentialSearch(arr, 1), equals(4));
    expect(sequentialSearch(arr, 10), equals(9));
  });

  test('binary search', () {
    var arr = [9, 5, 4, 6, 1, 3, 2, 7, 8, 10];
    expect(sequentialSearch(arr, 9), equals(0));
    expect(sequentialSearch(arr, 1), equals(4));
    expect(sequentialSearch(arr, 10), equals(9));
  });
}
