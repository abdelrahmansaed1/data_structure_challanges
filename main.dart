import 'linked_list/node.dart';
import 'linked_list/print_reverse.dart';
import 'linked_list/reverse_list.dart';
import 'linked_list/remove_occurrences.dart';
import 'linked_list/find_middle.dart';
import 'stacks/reverse_list.dart' as reverse_list;
import 'stacks/balanced_parentheses.dart';

// Stack Challenges
void testReverseList() {
  print('Challenge 1: Reverse a List');
  reverseList([1, 2, 3, 4, 5]); // Expected: 5 4 3 2 1
  print('---');
}

void testBalancedParentheses() {
  print('Challenge 2: Balance the Parentheses');
  print(isBalanced("(())")); // true
  print(isBalanced("(()")); // false
  print(isBalanced(")(")); // false
  print('---');
}

// Linked List Setup
LinkedList<int> generateList(List<int> items) {
  final list = LinkedList<int>();
  for (var item in items) {
    list.append(item);
  }
  return list;
}

void testPrintInReverse() {
  print('Challenge 3: Print Linked List in Reverse');
  final list = generateList([1, 2, 3, 4]);
  printInReverse(list.head); // 4 3 2 1
  print('---');
}

void testFindMiddleNode() {
  print('Challenge 4: Find Middle Node');
  final list = generateList([1, 2, 3, 4, 5]);
  final middle = findMiddleNode(list.head);
  print('Middle Node: ${middle?.value}'); // Expected: 3
  print('---');
}

void testReverseLinkedList() {
  print('Challenge 5: Reverse Linked List');
  final list = generateList([1, 2, 3, 4]);
  final reversedHead = reverseLinkedList(list.head);
  var current = reversedHead;
  while (current != null) {
    print(current.value);
    current = current.next;
  }
  print('---');
}

void testRemoveAllOccurrences() {
  print('Challenge 6: Remove All Occurrences');
  final list = generateList([1, 2, 3, 2, 4, 2, 5]);
  var removeAllOccurrences2 = removeAllOccurrences;
  final updatedHead = removeAllOccurrences2(list.head, 2);
  var current = updatedHead;
  while (current != null) {
    print(current.value);
    current = current.next;
  }
  print('---');
}

void main() {
  testReverseList();
  testBalancedParentheses();
  testPrintInReverse();
  testFindMiddleNode();
  testReverseLinkedList();
  testRemoveAllOccurrences();
}
