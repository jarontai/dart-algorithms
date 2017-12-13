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

  return arr;
}

mergeSort(List<int> arr, Function swap) {
  List<int> merge(List<int> left, List<int> right) {
    var result = <int>[];
    var i = 0, j = 0;
    while (i <left.length && j < right.length) {
      if (left[i] < right[j]) {
        result.add(left[i++]);
      } else {
        result.add(right[j++]);
      }
    }
    while (i < left.length) {
      result.add(left[i++]);
    }
    while (j < right.length) {
      result.add(right[j++]);
    }
    return result;
  }

  List<int> sort(List<int> arr) {
    var length = arr.length;
    if (length == 1) {
      return arr;
    }
    var mid = (length / 2).floor();
    List<int> left = arr.sublist(0, mid);
    List<int> right = arr.sublist(mid);
    return merge(sort(left), sort(right));
  }

  return sort(arr);
}

quickSort(List<int> arr, Function swap) {
  partition(List<int> arr, int left, int right) {
    var pivot = arr[((right + left) / 2).floor()];
    var i = left;
    var j = right;

    while (i <= j) {
      while (arr[i] < pivot) {
        i++;
      }
      while (arr[j] > pivot) {
        j--;
      }
      if (i <= j) {
        swap(arr, i, j);
        i++;
        j--;
      }
    }
    return i;
  }

  sort(List<int> arr, int left, int right) {
    var index;
    if (arr.length > 1) {
      index = partition(arr, left, right);

      if (left < index - 1) {
        sort(arr, left, index - 1);
      }

      if (index < right) {
        sort(arr, index, right);
      }
    }
  }

  sort(arr, 0, arr.length - 1);

  return arr;
}
