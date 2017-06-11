import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

main() {
  var list = new ADTList<String>();
  list.append('Java');
  list.append('JavaScript');
  list.append('Dart');
  list.append('C#');
  list.append('Ruby');
  list.append('PHP');
  list.front();
  print(list.getElement());
  list.next();
  print(list.getElement());
  list.next();
  list.next();
  list.prev();
  print(list.getElement());

  for (list.front(); list.position < list.length - 1; list.next()) {
    print(list.getElement());
  }

  for (list.end(); list.position >= 0; list.prev()) {
    print(list.getElement());
  }

  print(list);
  list.remove('JavaScript');
  print(list);
}
