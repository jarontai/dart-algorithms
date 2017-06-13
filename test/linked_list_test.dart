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
    list.insert('Java', 'Dart');
    expect(list.size, equals(5));
    list.remove('Ruby');
    expect(list.size, equals(4));
    expect(list.indexOf('Dart'), equals(1));
    list.removeAt(3);
    expect(list.find('C#'), isNull);
  });
}
