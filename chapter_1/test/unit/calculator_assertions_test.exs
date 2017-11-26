defmodule Chapter1.CalculatorAssertionsTest do
  use ExUnit.Case
  alias Chapter1.CalculatorAssertions

  describe "CalculatorAssertions" do
    test "methods only accept numbers" do
      actualAdd = CalculatorAssertions.add("foo", "bar")
      actualSubtract = CalculatorAssertions.subtract("foo", "bar")
      actualMultiply = CalculatorAssertions.multiply("foo", "bar")
      actualDivide = CalculatorAssertions.divide("foo", "bar")

      expected = "Incorrect type received as arguments"

      assert actualAdd == expected
      assert actualSubtract == expected
      assert actualMultiply == expected
      assert actualDivide == expected
    end
  end

  describe "add/2" do
    test "adds two numbers together" do
      actual = CalculatorAssertions.add(2, 3)
      expected = 5

      assert actual == expected
    end
  end

  describe "subtract/2" do
    test "subtracts two numbers" do
      actual = CalculatorAssertions.subtract(10, 3)
      expected = 7
      incorrect_expected = 10
      
      assert actual == expected
      refute actual == incorrect_expected  
    end
  end

  describe "multiply/2" do
    test "multiplies two numbers together" do
      actual = CalculatorAssertions.multiply(2, 3)
      expected = 6
      incorrect_expected = 10

      assert actual == expected
      refute actual == incorrect_expected
    end
  end

  describe "divides/2" do
    test "divides two numbers together" do
      actual = CalculatorAssertions.divide(25, 5)
      expected = 5
      incorrect_expected = "Dave"

      assert actual == expected
      refute actual == incorrect_expected
    end
  end
end
