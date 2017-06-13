import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

main() {
  var list = new DoublyLinkedList<String>();

  setUp(() {
    list.insert(null, 'Java');
    list.insert('Java', 'JavaScript');
    list.insert('JavaScript', 'Dart');
    list.insert('Dart', 'C#');
    list.insert('C#', 'Ruby');
  });

  test('doubly linked list operations', () {
    // TODO
    // list.insert('Java', 'Dart');
    // expect(list.size, equals(5));
    // list.remove('Ruby');
    // expect(list.size, equals(4));
    // expect(list.indexOf('Dart'), equals(1));
    // list.removeAt(3);
    // expect(list.find('C#'), isNull);
  });
}
