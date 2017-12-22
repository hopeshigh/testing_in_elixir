defmodule Chapter2.Maps.PatternMapsTest do
  use ExUnit.Case
  doctest Chapter2.Maps.PatternMaps

  alias Chapter2.Maps.PatternMaps

  describe "initialState/0" do
    test "returns a map" do
      actual = PatternMaps.initialState()

      assert %{name: "Dave"} = actual
    end

    test "returns another map" do
      name = "Dave"
      actual = PatternMaps.initialState()

      assert %{name: ^name} = actual
    end
  end
end
