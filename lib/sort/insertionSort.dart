List<int> insertionSort(List<int> nums) {
  for (int i = 0; i < nums.length - 1; i++) {
    //comparing the elements backward/finding appropriate space for the new value which is picked from the unsorted part and inserting it into sorted part
    for (int j = i + 1; j > 0; j--) {
      if (nums[j] < nums[j - 1]) {
        int temp = nums[j];
        nums[j] = nums[j - 1];
        nums[j - 1] = temp;
      } else {
        break;
      }
    }
  }
  return nums;
}

void main() {
  List<int> nums = [4, 3, 6, 5, 2, 1];
  print(insertionSort(nums));
}
