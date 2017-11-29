shellSort(List<int> arr, Function swap) {
  var gap = (arr.length / 2).floor();

  while (gap > 0) {
    for (var outer = gap; outer < arr.length; outer++) {
      for (var inner = outer; inner >= gap; inner -= gap) {
        if (arr[inner] < arr[inner - gap]) {
          swap(arr, inner, inner - gap);
        } else {
          break;
        }
      }
    }

    gap = (gap / 2).floor();
  }
}
