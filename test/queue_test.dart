import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

main() {
  var queue = new Queue<String>();
  queue.enqueue('Android');
  queue.enqueue('iOS');
  queue.enqueue('Web');
  print(queue.toString());
  queue.dequeue();
  print(queue.toString());
  print('Front of queue: ' + queue.front);
  print('End of queue: ' + queue.end);
}
