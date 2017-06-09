import 'linked_list.dart';

main() {
  var list = new LinkedList<String>();
  list.append('Java');
  list.append('JavaScript');
  list.append('C#');
  list.append('Ruby');
  list.display();
  list.insert('Java', 'Dart');
  list.display();
  list.remove('Ruby');
  list.display();
}
