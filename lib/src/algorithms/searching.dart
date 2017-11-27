int sequentialSearch(List<int> arr, int target) {
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] == target) {
      return i;
    }
  }
  return -1;
}

int binarySearch(List<int> arr, int target) {
  var upper = arr.length - 1;
  var lower = 0;
  while (lower <= upper) {
    var mid = ((upper + lower) / 2).floor();
    if (arr[mid] < target) {
      lower = mid + 1;
    } else if (arr[mid] > target) {
      upper = mid - 1;
    } else {
      return mid;
    }
  }
  return -1;
}
