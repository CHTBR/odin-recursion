require "rspec"
require_relative "../../merge_sort/merge_sort"

RSpec.describe MergeSort do
  let(:subject) { MergeSort }

  describe "#sort" do
    context "when given an array" do
      unsorted_arr = [
        [0, 3, 5, 4, 1, 6, 2],
        [3, 2, 1, 13, 8, 5, 0, 1],
        [105, 79, 100, 110]
      ]
      sorted_arr = [
        [0, 1, 2, 3, 4, 5, 6],
        [0, 1, 1, 2, 3, 5, 8, 13],
        [79, 100, 105, 110]
      ]

      it "returns a sorted array" do
        rand_index = rand(0..2)
        expect(subject.sort(unsorted_arr[rand_index]).to eql(sorted_arr[rand_index]))
      end
    end
  end
end
