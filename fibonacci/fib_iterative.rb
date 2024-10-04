# A class for iteratively calculating numbers from fibonacci sequence and returning them as an array
class FibIterative
  def self.num_at_pos(pos)
    return 0 if pos.zero?
    return 1 if pos == 1
  end
end
