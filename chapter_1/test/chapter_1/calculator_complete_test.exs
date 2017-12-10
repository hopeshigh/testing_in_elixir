defmodule Chapter1.CalculatorCompleteTest do
  use ExUnit.Case
  doctest Chapter1.CalculatorComplete

  alias Chapter1.CalculatorComplete

  describe "CalculatorComplete" do
    test "methods only accept numbers" do
      actualAdd = CalculatorComplete.add("foo", "bar")
      actualSubtract = CalculatorComplete.subtract("foo", "bar")
      actualMultiply = CalculatorComplete.multiply("foo", "bar")
      actualDivide = CalculatorComplete.divide("foo", "bar")

      expected = "Incorrect type received as arguments"

      assert actualAdd == expected
      assert actualSubtract == expected
      assert actualMultiply == expected
      assert actualDivide == expected
    end
  end

  describe "add/2" do
    test "adds two numbers together" do
      actual = CalculatorComplete.add(2, 3)
      expected = 5

      assert actual == expected
    end
  end

  describe "subtract/2" do
    test "subtracts two numbers" do
      actual = CalculatorComplete.subtract(10, 3)
      expected = 7
      
      assert actual == expected
    end
  end

  describe "multiply/2" do
    test "multiplies two numbers together" do
      actual = CalculatorComplete.multiply(2, 3)
      expected = 6

      assert actual == expected
    end
  end

  describe "divides/2" do
    test "divides two numbers together" do
      actual = CalculatorComplete.divide(25, 5)
      expected = 5.0

      assert actual == expected
    end
  end
end
