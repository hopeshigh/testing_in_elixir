defmodule Chapter1.CalculatorBasicTest do
  use ExUnit.Case
  alias Chapter1.CalculatorBasic

  describe "add/2" do
    test "adds two numbers together" do
      actual = CalculatorBasic.add(2, 3)
      expected = 5

      assert actual == expected
    end

    test "only accepts numbers" do
      actual = CalculatorBasic.add("foo", "bar")
      expected = "Incorrect type received as arguments"

      assert actual == expected
    end
  end
end
