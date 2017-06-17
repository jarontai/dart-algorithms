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
    list.insert(0, 'Dart');
    list.insert(3, 'Go');
    expect(list.size, equals(6));
    list.remove('JavaScript');
    expect(list.size, equals(5));
    expect(list.indexOf('Dart'), equals(0));
    expect(list.indexOf('Go'), equals(2));
    expect(list.isEmpty, isFalse);
  });
}
