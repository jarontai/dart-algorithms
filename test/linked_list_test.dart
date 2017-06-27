import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

main() {
  var list = new LinkedList<String>();

  setUp(() {
    list.append('Java');
    list.append('JavaScript');
    list.append('C#');
    list.append('Ruby');
  });

  test('linked list operations', () {
    expect(list.head?.element, equals('Java'));
    expect(list.insert(4, 'PHP'), isFalse);
    expect(list.insert(0, 'Dart'), isTrue);
    expect(list.insert(3, 'Go'), isTrue);
    expect(list.size, equals(6));
    expect(list.remove('JavaScript'), equals('JavaScript'));
    expect(list.size, equals(5));
    expect(list.indexOf('Dart'), equals(0));
    expect(list.indexOf('Go'), equals(2));
    expect(list.isEmpty, isFalse);
    expect(list.head?.element, equals('Dart'));
  });
}
