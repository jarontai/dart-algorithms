import 'doubly_linked_list.dart';

main() {
  var list = new DoublyLinkedList<String>();
  list.insert(null, 'Java');
  list.insert('Java', 'JavaScript');
  list.insert('JavaScript', 'Dart');
  list.insert('Dart', 'C#');
  list.insert('C#', 'Ruby');
  list.display(reverse: true);
  print('');
  list.remove('Dart');
  list.display();
}
