class Node {
  int? data;
  Node? next;

  Node(this.data);
}

class singlyLinkedList {
  Node? Head;

  void append(int data) {
    Node newNode = Node(data);

    if (Head == null) {
      Head = newNode;
    } else {
      Node? current = Head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  void display() {
    Node? current = Head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  singlyLinkedList list = singlyLinkedList();
  list.append(15);
  list.append(32);
  list.append(13);
  list.append(56);

  list.display();
}
