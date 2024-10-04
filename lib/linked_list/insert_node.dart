import 'dart:io';

class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class linkedList {
  Node? head, tail;

  insertNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

  deleteNode(int target) {
    if (head == null) {
      return 'list is empty';
    } else {
      if (head!.data == target) {
        head = head!.next;
        return;
      }

      Node? current = head;
      while (current!.next != null && current.next!.data != target) {
        current = current.next;
      }
      if (current.next == null) {
        return 'target not found';
      }
      current.next = current.next!.next;
    }
  }

  display() {
    Node? current = head;
    if (head == null) return 'list is empty';
    while (current != null) {
      stdout.write('${current.data} | ');
      current = current.next;
    }
  }

  insertAfter(int data, afterValue) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
      return;
    }
    if (tail!.data == afterValue) {
      tail!.next = newNode;
      tail = newNode;
      return;
    }
    Node? current = head;
    while (current != null && current.data != afterValue) {
      current = current.next;
    }
    if (current == null) {
      print("Value $afterValue not found in the list.");
      return;
    }
    newNode.next = current.next;
    current.next = newNode;
  }

  insertBefore(int data, beforeValue) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
      return;
    }
    if (tail!.data == beforeValue) {
      tail!.next = newNode;
      tail = newNode;
    }
    Node? current = head;
    while (current!.next != null && current.next!.data != beforeValue) {
      current = current.next;
    }
    newNode.next = current.next;
    current.next = newNode;
  }

  middValue() {
    Node? one = head;
    Node? two = head;
    while (two != null && two.next != null && two.next!.next != null) {
      one = one!.next;
      two = two.next!.next;
    }
    return print("Middle node: ${one?.data}");
  }

  removeDuplicate() {
    Node? current = head;
    while (current != null) {
      Node? temp = current;
      while (temp!.next != null) {
        if (current.data == temp.next!.data) {
          temp.next = temp.next!.next;
        } else {
          temp = temp.next;
        }
      }
      current = current.next;
    }
  }

  reverse() {
    Node? current = head;
    Node? prev;
    Node? next;
    if (head == null) {
      return 'list not found';
    }

    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    head = prev;
  }
}

void main() {
  final LinkedList = linkedList();
  LinkedList.insertNode(1);
  LinkedList.insertNode(2);
  LinkedList.insertNode(3);
  LinkedList.insertNode(4);
  LinkedList.insertNode(5);
  LinkedList.insertNode(6);
  LinkedList.insertNode(2);

  LinkedList.middValue();

  print('InsertAfter');
  LinkedList.insertAfter(3, 6);
  LinkedList.display();
  print('\nInsertBefore');
  LinkedList.insertBefore(8, 3);
  LinkedList.display();
  print('\nDelete');
  LinkedList.deleteNode(1);
  LinkedList.display();
  print('\nReverse');
  LinkedList.reverse();
  LinkedList.display();
  print('\nremove duplicate');
  LinkedList.removeDuplicate();
  LinkedList.display();
}

// List<int> bubbleSort(List<int> nums) {
//   for (int i = 0; i < nums.length - 1; i++) {
//     for (int j = 0; j < nums.length - i - 1; j++) {
//       // Loop until the second last unsorted element
//       if (nums[j] > nums[j + 1]) {
//         // Compare current element with the next
//         int temp = nums[j];
//         nums[j] = nums[j + 1];
//         nums[j + 1] = temp; // Swap elements
//       }
//     }
//   }
//   return nums; // Return sorted list
// }

// void main() {
//   List<int> nums = [5, 3, 8, 4, 2]; // Declare nums outside the function
//   List<int> sortedNums = bubbleSort(nums);
//   print(sortedNums); // Output: [2, 3, 4, 5, 8]
// }
