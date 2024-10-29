int recursiveSum(List<int> nums, int index1, int index2) {
  if (index1 > nums.length || index2 > nums.length || index1 == index2) {
    return 0;
  } else {
    return nums[index1] + nums[index2];
  }
}

void main() {
  List<int> nums = [8, 5, 6, 3, 4];
  int index1 = 1;
  int index2 = 4;

  int result = recursiveSum(nums, index1, index2);
  print(
      "sum of ${nums[index1]} and ${nums[index2]} from the list $nums = $result");
}
