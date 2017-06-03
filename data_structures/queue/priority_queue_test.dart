import 'priority_queue.dart';

main() {
  var queue = new PriorityQueue<String>();
  queue.enqueue('Android', 3);
  queue.enqueue('iOS', 2);
  queue.enqueue('Web', 1);
  queue.enqueue('Fuchsia', 0);
  print(queue.toString());
  queue.dequeue();
  print(queue.toString());
  print('Front of queue: ' + queue.front);
  print('End of queue: ' + queue.end);
}
