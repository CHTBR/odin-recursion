# Module containing merge sort implementations
module MergeSort
  def self.sort(arr)
    return arr if arr.size == 1

    arr1 = sort(arr[0..((arr.size / 2) - 1)])
    arr2 = sort(arr[(arr.size / 2)..])
    _merge(arr1, arr2)
  end

  def self._merge(arr1, arr2)
    k = 0
    l = 0
    result_arr = []
    while k < arr1.size && l < arr2.size
      if arr1[k] < arr2[l]
        result_arr << arr1[k]
        k += 1
      else
        result_arr << arr2[l]
        l += 1
      end
    end
    result_arr += arr2[l..] if arr1[k].nil?
    result_arr += arr1[k..] if arr2[l].nil?
    result_arr
  end
end
