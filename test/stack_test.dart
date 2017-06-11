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

  test('stack size and peek', () {
    expect(stack.size, equals(4));
    expect(stack.peek(), 'Dart');
  });

  test('stack pop and push', () {
    expect(stack.pop(), equals('Dart'));
    expect(stack.peek(), 'C#');
    stack.push('Ruby');
    expect(stack.pop(), 'Ruby');
    stack.clear();
    expect(stack.size, equals(0));
    expect(stack.peek(), isNull);
    stack.push('Dart');
    expect(stack.peek(), equals('Dart'));
  });
}
