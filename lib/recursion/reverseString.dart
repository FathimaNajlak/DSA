String reverseString(String str) {
  if (str.isEmpty) {
    return str;
  }
  return reverseString(str.substring(1)) + str[0];
}

String reverseWord(String word) {
  if (word.isEmpty || word.length == 1) {
    return word;
  }
  return reverseWord(word.substring(1)) + word[0];
}

//reversing string by seperating each word
String reverseStringSeperated(String str) {
  List<String> words = str.split(' ');
  List<String> reversedWords = words.map((word) => reverseWord(word)).toList();
  return reversedWords.join(' ');
}

void main() {
  String original = "Fathima najla";
  String reversed = reverseString(original);
  String seperatereversed = reverseStringSeperated(original);

  print('Original String: $original');
  print('Reversed String: $reversed');
  print('Seperated Reversed String: $seperatereversed');
}
