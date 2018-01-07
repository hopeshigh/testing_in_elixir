defmodule Chapter2.Maps.NestedMapsTest do
  use ExUnit.Case

  alias Chapter2.Maps.NestedMaps

  describe "nested_map/0" do
    test "matches the exact map via equality" do
      expected_map =
        %{
          company: "Hyperion",
            employees: %{
              name: "Handsome Jack",
              role: "CEO",
              pets: "Butt Stallion"
        }
      }

      actual_map = NestedMaps.nested_map()

      assert actual_map == expected_map
    end

    test "pattern matches the nested map" do
      actual_map = NestedMaps.nested_map()

      assert %{
        company: "Hyperion",
        employees: %{
          pets: "Butt Stallion"
        }
      } = actual_map
    end

    test "pattern matching on a previous value" do
      expected_value = "Butt Stallion"
      actual_map = NestedMaps.nested_map()

      assert %{employees: %{pets: ^expected_value}} = actual_map
    end
  end
end
