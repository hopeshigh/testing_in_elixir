defmodule Chapter2.BasicListsTest do
  use ExUnit.Case
  doctest Chapter2.BasicLists

  alias Chapter2.BasicLists

  describe "add_item/2" do
    test "adds input to an empty list" do
      actual = BasicLists.add_item(2)
      expected = [2]

      assert actual == expected
    end

    test "adds input to a populated list" do
      actual = BasicLists.add_item([2], 2)
      expected = [2, 2]

      assert actual == expected
    end

    test "adds a list to an empty list" do
      actual = BasicLists.add_item([], [2])
      expected = [2]

      assert actual == expected
    end

    test "adds a list to a populated list" do
      actual = BasicLists.add_item([123], [456])
      expected = [123, 456]

      assert actual == expected
    end

    test "combines two inputs of same type into a list" do
      actual = BasicLists.add_item("Hello", "World")
      expected = ["Hello", "World"]

      assert actual == expected
    end

    test "combines two inputs of different types into a list" do
      actual = BasicLists.add_item("Hello", %{hello: "Dave"})
      expected = ["Hello", %{hello: "Dave"}]

      assert actual == expected
    end

    test "adds item to state when item is not a list" do
      actual = BasicLists.add_item([2, 2], 2)
      expected = [2, 2, 2]

      assert actual == expected
    end

    test "adds item to state when item is a list" do
      actual = BasicLists.add_item([2, 2], [2])
      expected = [2, 2, 2]

      assert actual == expected
    end
  end
end
