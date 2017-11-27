import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

main() {
  var hash = new HashTable<String, String>();

  setUp(() {
    hash.put('Gandalf', 'gandalf@email.com');
    hash.put('John', 'johnsnow@email.com');
    hash.put('Tyrion', 'tyrion@email.com');
    hash.put('Aaron', 'aaron@email.com');
    hash.put('Donnie', 'donnie@email.com');
    hash.put('Ana', 'ana@email.com');
    hash.put('Jonathan', 'jonathan@email.com');
    hash.put('Jamie', 'jamie@email.com');
    hash.put('Sue', 'sue@email.com');
  });

  test('hash table operations', () {
    expect(hash.get('Tyrion'), equals('tyrion@email.com'));
    expect(hash.get('Aaron'), equals('aaron@email.com'));
    expect(hash.get('Joe'), isNull);
    expect(hash.remove('Donnie'), isTrue);
    expect(hash.remove('Joe'), isFalse);
    expect(hash.get('Donnie'), isNull);
    expect(hash.get('Jonathan'), equals('jonathan@email.com'));
  });
}
