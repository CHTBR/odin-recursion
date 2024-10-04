require "rspec"
require_relative "fib_shared"
require_relative "../../fibonacci/fib_iterative"

RSpec.describe FibIterative do
  it_behaves_like "a fibonacci generator" do
    let(:generator) { subject }
  end
end
