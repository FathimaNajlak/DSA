int binarySearch(List<int> array, int target) {
  int low = 0;
  int high = array.length - 1;
  while (low <= high) {
    int mid = (low + high) ~/ 2;
    if (array[mid] == target) {
      return mid;
    } else if (array[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return -1;
}

void main() {
  List<int> numbers = [10, 20, 30, 40, 50];
  int target = 30;
  int result = binarySearch(numbers, target);

  if (result != -1) {
    print('Element found at index: $result');
  } else {
    print('Element not found');
  }
}
