import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

main() {
  var tree = new BinarySearchTree<int>();
  var keys = <int>[];

  // 3 5 6 7 8 9 10 11 12 13 14 15 18 20 25

  setUp(() {
    tree.insert(11);
    tree.insert(7);
    tree.insert(15);
    tree.insert(5);
    tree.insert(3);
    tree.insert(9);
    tree.insert(8);
    tree.insert(10);
    tree.insert(13);
    tree.insert(12);
    tree.insert(14);
    tree.insert(20);
    tree.insert(18);
    tree.insert(25);
    tree.insert(6);
  });

  test('binary search tree operations', () {
    tree.inOrderTraverse((key) => keys.add(key));
    expect(keys.length, equals(15));
    expect(keys.first, equals(3));
    expect(keys.last, equals(25));

    keys.clear();
    tree.preOrderTraverse((key) => keys.add(key));
    expect(keys.length, equals(15));
    expect(keys.first, equals(11));
    expect(keys.last, equals(25));

    keys.clear();
    tree.postOrderTraverse((key) => keys.add(key));
    expect(keys.length, equals(15));
    expect(keys.first, equals(3));
    expect(keys.last, equals(11));

    expect(tree.min(), equals(3));
    expect(tree.max(), equals(25));

    expect(tree.search(1), isFalse);
    expect(tree.search(6), isTrue);

    tree.remove(6);
    tree.remove(5);
    tree.remove(15);

    expect(tree.search(6), isFalse);
    expect(tree.search(5), isFalse);
    expect(tree.search(15), isFalse);

    expect(tree.min(), equals(3));
    expect(tree.max(), equals(25));
  });
}
