defmodule FearOfTesting.CalculatorTypesTest do
  use ExUnit.Case
  alias FearOfTesting.CalculatorTypes

  describe "add/2" do
    test "adds two numbers together" do
      actual = CalculatorTypes.add(2, 3)
      expected = 5

      assert actual == expected
    end

    test "only accepts numbers" do
      actual = CalculatorTypes.add("foo", "bar")
      expected = "Incorrect type received as arguments"

      assert actual == expected
    end
  end
end
