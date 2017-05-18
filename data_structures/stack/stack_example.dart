import 'stack.dart';

// convert decimal number to any base
baseConverter(int decimalNumber, int base) {
  var remainderStack = new Stack<int>();
  var binaryString = '';
  var remainderString = '0123456789ABCDEF';

  var remainder;
  while (decimalNumber > 0) {
    remainder = (decimalNumber % base).floor();
    remainderStack.push(remainder);
    decimalNumber = (decimalNumber / base).floor();
  }

  while (!remainderStack.isEmpty) {
    binaryString += remainderString[remainderStack.pop()];
  }

  return binaryString;
}

main(List<String> args) {
  print(baseConverter(10, 2));
  print(baseConverter(10, 8));
  print(baseConverter(43, 16));
}
