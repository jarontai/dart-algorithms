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

selectionSort(List<int> arr, Function swap) {
  var min;
  for (var outer = 0; outer < arr.length - 1; outer++) {
    min = outer;
    for (var inner = outer + 1; inner <= arr.length - 1; inner++) {
      if (arr[inner] < arr[min]) {
        min = inner;
      }
    }
    swap(arr, outer, min);
  }
}
