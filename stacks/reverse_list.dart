void reverseList<T>(List<T> list) {
  var stack = <T>[];
  for (var item in list) {
    stack.add(item);
  }
  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}
