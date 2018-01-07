defmodule Chapter2.Maps.BasicMapsTest do
  use ExUnit.Case

  alias Chapter2.Maps.BasicMaps

  describe "basic-map/0" do
    test "matches the exact map via equality" do
      expected_map =
        %{
          name: "Dave",
          age: 40,
          city: "London",
          occupation: "Lumberjack",
          sport: "Football",
          food: "Thai",
          place: "Australia"
        }

      actual_map = BasicMaps.basic_map()

      assert actual_map == expected_map
    end

    test "pattern matches the map" do
      actual_map = BasicMaps.basic_map()

      assert %{
        name: "Dave",
        occupation: "Lumberjack",
        place: "Australia"
      } = actual_map
    end

    test "pattern matching on a previous value" do
      expected_value = "Dave"
      actual_map = BasicMaps.basic_map()

      assert %{name: ^expected_value} = actual_map
    end
  end
end
