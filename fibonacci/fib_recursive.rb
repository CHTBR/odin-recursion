# Class for storing fibonacci sequence related methods
class FibRecursive
  def self.num_at_pos(pos)
    return [0] if pos.zero?
    return [0, 1] if pos == 1

    arr1 = num_at_pos(pos - 1)
    arr2 = num_at_pos(pos - 2)
    arr1 << (arr1.last + arr2.last)
  end
end
