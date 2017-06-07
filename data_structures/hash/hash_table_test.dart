import 'hash_table.dart';

main() {
  var hash = new HashTable<String, String>();
  hash.put('Gandalf', 'gandalf@gmail.com');
  hash.put('John', 'johnsnow@gmail.com');
  hash.put('Tyrion', 'tyrion@gmail.com');
  hash.put('Aaron', 'aaron@gmail.com');

  print(hash.get('Tyrion'));
  print(hash.get('Aaron'));
  print(hash.get('Joe'));
}
