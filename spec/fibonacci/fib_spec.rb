require "rspec"
require_relative "../../fibonacci/fib"

RSpec.describe Fib do
  describe "#num_at_pos" do
    context "when asking for base cases" do
      it "returns 0 when asked for number at position 0" do
        expect(Fib.num_at_pos(0)).to eql(0)
      end

      it "returns 1 when asked for number at position 1" do
        expect(Fib.num_at_pos(1)).to eql(1)
      end
    end

    context "when asking for a random number" do
      fibonacci = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610,	987, 1597, 2584, 4181]

      it "returns number from the fibonacci sequence at the specified position" do
        random_pos = rand(2..fibonacci.size)
        expect(Fib.num_at_pos(random_pos)).to eql(fibonacci[random_pos])
      end
    end
  end
end
