defmodule FearOfTesting.CalculatorTest do
  use ExUnit.Case
  alias FearOfTesting.Calculator

  describe "add/2" do
    test "adds two numbers together" do
      actual = Calculator.add(2, 3)
      expected = 5

      assert actual == expected
    end

    test "only accepts numbers" do
      actual = Calculator.add("foo", "bar")
      expected = "Incorrect type received as arguments"

      assert actual == expected
    end
  end
end
