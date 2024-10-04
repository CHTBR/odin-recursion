# A class for iteratively calculating numbers from fibonacci sequence and returning them as an array
module FibIterative
  def self.num_at_pos(pos)
    return [0] if pos.zero?

    results_arr = [0, 1]
    results_arr << (results_arr[-1] + results_arr[-2]) while results_arr.size <= pos
    results_arr
  end
end
