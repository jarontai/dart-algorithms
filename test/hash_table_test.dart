import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

main() {
  var hash = new HashTable<String, String>();

  setUp(() {
    hash.put('Gandalf', 'gandalf@gmail.com');
    hash.put('John', 'johnsnow@gmail.com');
    hash.put('Tyrion', 'tyrion@gmail.com');
    hash.put('Aaron', 'aaron@gmail.com');
  });

  test('hash table operations', () {
    // TODO
    print(hash.get('Tyrion'));
    print(hash.get('Aaron'));
    print(hash.get('Joe'));
  });
}
