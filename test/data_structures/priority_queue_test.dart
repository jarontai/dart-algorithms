import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

main() {
  var queue = new PriorityQueue<String>();

  setUp(() {
    queue.enqueue('Android', 0);
    queue.enqueue('iOS', 2);
    queue.enqueue('Web', 3);
    queue.enqueue('Fuchsia', 1);
  });

  test('priority queue operations', () {
    expect(queue.front, equals('Android'));
    expect(queue.end, equals('Web'));
    expect(queue.size, equals(4));
    expect(queue.dequeue(), equals('Android'));
    expect(queue.front, equals('Fuchsia'));
    expect(queue.end, equals('Web'));
    queue.clear();
    expect(queue.size, equals(0));
  });
}
