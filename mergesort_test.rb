gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'mergesort'

class MergeSortTest < Minitest::Test
  AS = [1, 3, 4, 7]
  BS = [2, 3, 10, 10]

  UNORDERED = [6, 23, 53, 1, 2, 5, 62, 61, 33, 21, 14, 6, 23]

  def test_merge_merges_two_ordered_lists
    assert_equal [1, 2, 3, 3, 4, 7, 10, 10], merge(AS, BS)
  end

  def test_mergesort_sorts_a_list
    assert_equal [1, 2, 5, 6, 6, 14, 21, 23, 23, 33, 53, 61, 62], mergesort(UNORDERED)
  end

end
# def merge(as, bs)
#   results = []
#   while as.length > 0 && bs.length > 0 do
#     a = as.slice!(0)
#     results + bs if a.nil?
#
#     b = bs.slice!(0)
#     results + as if b.nil?
#
#     if a < b
#       results << a
#       results << b
#     else
#       results << b
#       results << a
#     end
#   end
#   results
# end
