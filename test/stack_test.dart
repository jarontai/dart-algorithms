import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

main() {
  var stack = new Stack<String>();

  setUp(() {
    stack.push('Java');
    stack.push('JavaScript');
    stack.push('C#');
    stack.push('Dart');
  });

  test('stack operations', () {
    expect(stack.size, equals(4));
    expect(stack.peek(), 'Dart');
    expect(stack.pop(), equals('Dart'));
    expect(stack.peek(), 'C#');
    expect(stack.isEmpty, isFalse);
    stack.push('Ruby');
    expect(stack.pop(), 'Ruby');
    stack.clear();
    expect(stack.isEmpty, isTrue);
    expect(stack.size, equals(0));
    expect(stack.peek(), isNull);
    stack.push('Dart');
    expect(stack.peek(), equals('Dart'));
  });
}
