import 'stack.dart';

main() {
  var stack = new Stack<String>();
  stack.push('Java');
  stack.push('JavaScript');
  stack.push('Dart');
  print('Stack size ${stack.size}');
  print(stack.peek());

  var poped = stack.pop();
  print('The poped element is $poped');
  print(stack.peek());
  stack.push('Ruby');
  print(stack.peek());
  stack.clear();
  print('Stack size ${stack.size}');
  print(stack.peek());
  stack.push('Dart');
  print(stack.peek());
}
