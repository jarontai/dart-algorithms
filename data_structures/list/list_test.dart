import 'list.dart';

main() {
  ADTList<String> languages = new ADTList<String>();
  languages.append('Java');
  languages.append('JavaScript');
  languages.append('Dart');
  languages.append('C#');
  languages.append('Ruby');
  languages.append('PHP');
  languages.front();
  print(languages.getElement());
  languages.next();
  print(languages.getElement());
  languages.next();
  languages.next();
  languages.prev();
  print(languages.getElement());
  print('************');
  for (languages.front(); languages.position < languages.length - 1; languages.next()) {
    print(languages.getElement());
  }
  print('************');
  for (languages.end(); languages.position >= 0; languages.prev()) {
    print(languages.getElement());
  }
  print('************');  
  print(languages);
  languages.remove('JavaScript');
  print(languages);
}
