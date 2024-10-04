require "rspec"
require_relative "fib_shared"
require_relative "../../fibonacci/fib_recursive"

RSpec.describe FibRecursive do
  it_behaves_like "a fibonacci generator" do
    let(:generator) { FibRecursive }
  end
end
