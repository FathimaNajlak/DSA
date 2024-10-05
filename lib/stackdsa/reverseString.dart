String reverseString(String input) {
  List<String> stack = [];

  for (int i = 0; i < input.length; i++) {
    stack.add(input[i]);
  }
  String reversed = '';
  while (stack.isNotEmpty) {
    reversed += stack.removeLast();
  }
  return reversed;
}

void main() {
  String input = 'najla';
  String result = reverseString(input);
  print("string '$input' reversed : $result");
}
