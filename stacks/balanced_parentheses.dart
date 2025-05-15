void reverseList<T>(List<T> list) {
  var stack = <T>[];
  for (var item in list) {
    stack.add(item);
  }
  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}

bool isBalanced(String input) {
  var stack = <String>[];
  for (var char in input.split('')) {
    if (char == '(') {
      stack.add(char);
    } else if (char == ')') {
      if (stack.isEmpty) return false;
      stack.removeLast();
    }
  }
  return stack.isEmpty;
}
