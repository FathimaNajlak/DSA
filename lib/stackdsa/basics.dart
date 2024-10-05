void main() {
  List<int> stack = [];

  //push(add) elemnts
  stack.add(3);
  stack.add(5);
  stack.add(4);
  stack.add(7);
  stack.add(9);
  print('elements in the stack : $stack');

  //peek topElement
  int topElement = stack.last;
  print('top element is :$topElement ');

  //pop (delete)
  stack.removeLast();
  print('stack after pop:$stack');

  bool isEmpty = stack.isEmpty;
  print('stack empty? : $isEmpty');
}
