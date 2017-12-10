defmodule Chapter2.PatternListsTest do
  use ExUnit.Case
  doctest Chapter2.PatternLists
  
  alias Chapter2.PatternLists

  describe "add_item/2" do
    test "adds input to an empty list" do
      actual = PatternLists.add_item(2)
      expected = [2]

      assert ^expected = actual
    end

    test "adds input to a populated list" do
      actual = PatternLists.add_item([2], 2)
      expected = [2, 2]

      assert ^expected = actual
    end

    test "adds a list to an empty list" do
      actual = PatternLists.add_item([], [2])
      expected = [2]

      assert ^expected = actual
    end

    test "adds a list to a populated list" do
      actual = PatternLists.add_item([123], [456])
      expected = [123, 456]

      assert ^expected = actual
    end

    test "combines two inputs of same type into a list" do
      actual = PatternLists.add_item("Hello", "World")
      expected = ["Hello", "World"]

      assert ^expected = actual
    end

    test "combines two inputs of different types into a list" do
      actual = PatternLists.add_item("Hello", %{hello: "Dave"})
      expected = ["Hello", %{hello: "Dave"}]

      assert ^expected = actual
    end
  end
end
