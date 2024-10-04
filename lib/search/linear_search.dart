int linearSearch(List<int> array, int target) {
  for (var i = 0; i < array.length; i++) {
    if (array[i] == target) {
      return i;
    }
  }
  return -1;
}

void main() {
  List<int> array = [34, 23, 45, 56];
  int target = 23;
  int result = linearSearch(array, target);
  if (result != -1) {
    print('target found at index $result ');
  } else {
    print('target not found');
  }
}
