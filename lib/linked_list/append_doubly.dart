class doublyNode {
  int? data;
  doublyNode? next;
  doublyNode? prev;

  doublyNode(this.data);
}

class DoublyLinkedlist {
  doublyNode? head;

  append(int data) {
    doublyNode newNode = doublyNode(data);

    if (head == null) {
      head = newNode;
    } else {
      doublyNode? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
      newNode.prev = current;
    }
  }

  String displayForward() {
    doublyNode? current = head;
    String result = '';
    while (current != null) {
      result += '${current.data} ';
      current = current.next;
    }
    return result.trim();
  }

  String displayBackward() {
    doublyNode? current = head;
    String result = '';
    while (current?.next != null) {
      current = current!.next;
    }

    while (current != null) {
      result += '${current.data} ';
      current = current.prev;
    }
    return result.trim();
  }
}

void main() {
  DoublyLinkedlist list = DoublyLinkedlist();

  list.append(12);
  list.append(25);
  list.append(37);
  list.append(43);
  list.append(58);

  print('forward ${list.displayForward()}');
  print('forward ${list.displayBackward()}');
}
