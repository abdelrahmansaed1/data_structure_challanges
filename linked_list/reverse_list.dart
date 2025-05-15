import 'node.dart';

Node<T>? reverseLinkedList<T>(Node<T>? head) {
  Node<T>? prev = null;
  var current = head;

  while (current != null) {
    var next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }
  return prev;
}
