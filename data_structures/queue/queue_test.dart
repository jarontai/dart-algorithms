import 'queue.dart';

main() {
  var queue = new Queue<String>();
  queue.enqueue('Android');
  queue.enqueue('iOS');
  queue.enqueue('Web');
  print(queue.toString());
  queue.dequeue();
  print(queue.toString());
  print('Front of queue: ' + queue.front());
  print('Back of queue: ' + queue.back());
}
