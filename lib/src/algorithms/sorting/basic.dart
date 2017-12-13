bubbleSort(List<int> arr, Function swap) {
  for (var i = 0; i < arr.length; i++) {
    for (var j = 0; j < arr.length - 1 - i; j++) {
      if (arr[j] > arr[j + 1]) {
        swap(arr, j, j + 1);
      }
    }
  }
  return arr;
}

selectionSort(List<int> arr, Function swap) {
  var min;
  for (var i = 0; i < arr.length; i++) {
    min = i;
    for (var j = i; j < arr.length; j++) {
      if (arr[j] < arr[min]) {
        min = j;
      }
    }
    swap(arr, min, i);
  }
  return arr;
}

insertionSort(List<int> arr, Function swap) {
  var j, temp;
  for (var i = 1; i < arr.length; i++) {
    j = i;
    temp = arr[i];
    while (j > 0 && arr[j - 1] > temp) {
      arr[j] = arr[j - 1];
      j--;
    }
    arr[j] = temp;
  }
  return arr;
}
