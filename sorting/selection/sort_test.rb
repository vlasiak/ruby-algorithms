require 'minitest/autorun'
require_relative 'sort'

class TestClassicSelectionSort < Minitest::Test
  def test_sorting_asc_sorted_array
    assert_equal [1, 2, 3, 4, 5], ClassicSelectionSort.call([1, 2, 3, 4, 5])
  end

  def test_sorting_desc_sorted_array
    assert_equal [1, 2, 3, 4, 5], ClassicSelectionSort.call([5, 4, 3, 2, 1])
  end

  def test_sorting_random_array
    assert_equal [1, 2, 3, 4, 5], ClassicSelectionSort.call([3, 1, 5, 4, 2])
  end
end

class TestPrettySelectionSort < Minitest::Test
  def test_sorting_asc_sorted_array
    assert_equal [1, 2, 3, 4, 5], PrettySelectionSort.call([1, 2, 3, 4, 5])
  end

  def test_sorting_desc_sorted_array
    assert_equal [1, 2, 3, 4, 5], PrettySelectionSort.call([5, 4, 3, 2, 1])
  end

  def test_sorting_random_array
    assert_equal [1, 2, 3, 4, 5], PrettySelectionSort.call([3, 1, 5, 4, 2])
  end
end
