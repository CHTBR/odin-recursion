# Module containing merge sort implementations
module MergeSort
  def self.sort(arr)
    return arr if arr.size == 1

    arr1 = sort(arr[0..(arr.size / 2 - 1)])
    arr2 = sort(arr[(arr.size / 2)..-1])
  end
end
