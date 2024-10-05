class Node {
  int? data;
  Node? next;
  Node(this.data);
}

Node? arrayToLinkedlist(List<int> array) {
  if (array.isEmpty) {
    return null;
  }
  Node head = Node(array[0]);
  Node current = head;

  for (int i = 1; i < array.length; i++) {
    Node? newNode = Node(array[i]);
    current.next = newNode;
    current = newNode;
  }
  return head;
}

void display(Node? head) {
  Node? current = head;
  while (current != null) {
    print(current.data);
    current = current.next;
  }
}

void main() {
  List<int> array = [
    7,
    2,
    8,
    3,
    6,
  ];

  Node? head = arrayToLinkedlist(array);
  print('Linked List:');
  display(head);
}
