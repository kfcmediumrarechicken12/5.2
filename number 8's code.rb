# write unit tests for functions for all the methods in the MathStuff class

require "minitest/autorun"

class MathStuff
  def add(a, b)
    a + b
  end
  def divide(a, b)
    a / b
  end
  def sum_array(a)
    a.reduce(0, :+)
  end
end

class TestMathStuff < Minitest::Test
  def setup
    @mathStuff = MathStuff.new
  end

  def test_add
    assert_equal 7, @mathStuff.add(3,4)

    assert_equal 17, @mathStuff.add(20,-3)

    assert_equal 7, @mathStuff.add(3.5,3.5)
  end

  def test_divide
    assert_equal 3, @mathStuff.divide(12, 4)

    assert_equal 4.5, @mathStuff.divide(9, 2)

    assert_equal -3, @mathStuff.divide(21, -7)
  end

  def test_sum_array
    assert_equal 7, @mathStuff.sum_array([1,1,1,1,1,1,1])

    assert_equal -7, @mathStuff.sum_array([1,-2,3,-9])

    assert_equal 0, @mathStuff.sum_array([5,-5,5,-5])

    assert_equal 0, @mathStuff.sum_array([])

    assert_equal 6.5, @mathStuff.sum_array([1.5, 2.0, 3.0])

  end

  def test_divide_by_zero
  assert_raises(ZeroDivisionError) { @mathStuff.divide(5, 0) }
  end
end