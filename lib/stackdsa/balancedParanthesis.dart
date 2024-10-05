bool isBalanced(String input) {
  List<String> stack = [];

  for (int i = 0; i < input.length; i++) {
    String char = input[i];

    if (char == '(' || char == '[' || char == '{') {
      stack.add(char);
    } else if (char == ')' || char == ']' || char == '}') {
      if (stack.isEmpty) return false;
      String top = stack.removeLast();
      if ((char == ')' && top != '(') ||
          (char == ']' && top != '[') ||
          (char == '}' && top != '{')) {
        return false;
      }
    }
  }
  return stack.isEmpty;
}

void main() {
  String input = '{[)]}';
  bool balanced = isBalanced(input);
  print('is it balanced? : $balanced');
}
