bubbleSort(List<int> arr, Function swap) {
  var length = arr.length;
  for (var outer = length; outer >= 1; outer--) {
    for (var inner = 0; inner < outer - 1; inner++) {
      if (arr[inner] > arr[inner + 1]) {
        swap(arr, inner, inner + 1);
      }
    }
  }
}
