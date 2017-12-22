defmodule Chapter2.Maps.BasicMapsTest do
  use ExUnit.Case
  doctest Chapter2.Maps.BasicMaps

  alias Chapter2.Maps.BasicMaps

  describe "get_value/1" do
      test "returns the value for a chosen key" do
        expected = "Dave"
        actual = BasicMaps.get_value([:name])

        assert expected == actual
      end
  end

  describe "extract_values/2" do
      test "returns the values for a chosen keys" do
        expected = %{
          name: "Dave",
          age: 40,
          city: "London"
        }
        actual = BasicMaps.extract_values([:name, :age, :city])

        assert expected == actual
      end
  end
end
