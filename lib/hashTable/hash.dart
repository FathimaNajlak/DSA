void main() {
  var studentMap = <int, String>{};

  studentMap[1] = 'Alice';
  studentMap[2] = 'Rani';
  studentMap[3] = 'Shiva';
  studentMap[4] = 'Sonu';

  print('Map : $studentMap');

  String? student = studentMap[1];
  print(' student with ID 1 : $student');

  studentMap.remove(4);
  print('Map after deleting an element : $studentMap');

  if (studentMap.containsKey(3)) {
    print('key 3 is present');
  }

  studentMap.forEach((key, value) {
    print('ID : $key Value : $value');
  });
}
