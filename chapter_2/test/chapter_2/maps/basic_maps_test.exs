defmodule Chapter2.Maps.BasicMapsTest do
  use ExUnit.Case
  doctest Chapter2.Maps.BasicMaps

  alias Chapter2.Maps.BasicMaps

  describe "build_map_of_emotions/2" do
    test "returns a map of chosen emotion" do
      expected = %{
        name: "Dave :("
        }
      actual = BasicMaps.build_map_of_emotions(:sad, [:name])

      assert expected == actual
    end
  end

  describe "extract_values/1" do
    test "returns the key/value for a chosen key" do
      expected = %{name: "Dave"}
      actual = BasicMaps.extract_values([:name])

      assert expected == actual
    end
  end

  describe "construct_map/1" do
    test "returns an excited map" do
      expected = %{
        occupation: "LUMBERJACK!!!!",
        city: "LONDON!!!!"
      }
      map = %{
        city: "London",
        occupation: "Lumberjack"
        }
      actual = BasicMaps.construct_map({:excited, map})

      assert expected == actual
    end

    test "returns a sad map" do
      expected = %{
        occupation: "Lumberjack :(",
        city: "London :("
      }
      map = %{
        city: "London",
        occupation: "Lumberjack"
        }
      actual = BasicMaps.construct_map({:sad, map})

      assert expected == actual
    end
  end
end
