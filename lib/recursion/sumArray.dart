int sumArray(List<int> array, int index) {
  if (index == array.length) {
    return 0;
  }
  return array[index] + sumArray(array, index + 1);
}

void main() {
  List<int> array = [34, 2, 56, 12];
  int sum = sumArray(array, 0);
  print('sum of the list: $sum');
}
