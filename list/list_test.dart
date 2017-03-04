import 'list.dart';

main() {
  ADTList<String> languages = new ADTList<String>();
  languages.append('Java');
  languages.append('JavaScript');
  languages.append('Ruby');
  languages.append('Dart');
  print(languages);
  languages.remove('JavaScript');
  print(languages);
}
