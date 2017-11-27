import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

main() {
  var queue = new Queue<String>();

  setUp(() {
    queue.enqueue('Android');
    queue.enqueue('iOS');
    queue.enqueue('Web');
  });

  test('queue operations', () {
    expect(queue.front, equals('Android'));
    expect(queue.end, equals('Web'));
    queue.enqueue('Fuchsia');
    expect(queue.size, equals(4));
    expect(queue.dequeue(), equals('Android'));
    expect(queue.end, equals('Fuchsia'));
    queue.clear();
    expect(queue.size, equals(0));
  });
}
