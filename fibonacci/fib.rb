# Class for storing fibonacci sequence related methods
class Fib
  def self.num_at_pos(pos)
    return 0 if pos.zero?
    return 1 if pos == 1
    self.num_at_pos(pos-2) + self.num_at_pos(pos-1)
  end
end
