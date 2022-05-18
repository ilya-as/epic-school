void main(List<String> arguments) {
  pyramid(2);
  sumOfPositive([10, -2, 30, 2]);
}

pyramid(int n) {
  List<List<int>> resultList = List.empty(growable: true);
  for (var i = 0; i < n; i++) {
    List<int> innerList = List.empty(growable: true);
    for (int j = 0; j <= i; j++) {
      innerList.add(1);
    }
    resultList.add(innerList);
  }
  print(resultList.toString());
}

sumOfPositive(List<int> nums) {
  int result = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] < 0) continue;
    result = result + nums[i];
  }
  print(result.toString());
}
