require 'minitest/autorun'

class TestClassMethods < Minitest::Test
  def test_add
    assert_equal 5, add(2, 3)
    assert_equal 0, add(-1, 1)
    assert_equal -3, add(-1, -2)
  end

  def test_divide
    assert_equal 2, divide(6, 3)
    assert_equal 0, divide(0, 5)
    assert_raises(ZeroDivisionError) { divide(5, 0) }
  end

  def test_sum_array
    assert_equal 6, sum_array([1, 2, 3])
    assert_equal 0, sum_array([])
    assert_equal -6, sum_array([-1, -2, -3])
  end
end

# Stubs
def add(a, b)
  0
end

def divide(a, b)
  0
end

def sum_array(array)
  0
end