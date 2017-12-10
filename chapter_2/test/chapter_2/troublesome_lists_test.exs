defmodule Chapter2.TroublesomeListsTest do
  use ExUnit.Case
  doctest Chapter2.TroublesomeLists
  
  alias Chapter2.TroublesomeLists

  describe "add_item/2" do
    test "adds charlist to an empty list" do
      actual = TroublesomeLists.add_item('hello')
      expected = ['hello']

      assert actual == expected
    end

    test "adds charlist to a list" do
      actual = TroublesomeLists.add_item('hello', 'dave')
      expected = [104, 101, 108, 108, 111, 100, 97, 118, 101]

      assert actual == expected
    end

    test "a list of numbers returns a phrase" do
      actual = TroublesomeLists.add_item(
        [104, 101, 108, 108, 111], 
        [100, 97, 118, 101]
      )

      expected = 'hellodave'

      assert actual == expected
    end
  end
end
