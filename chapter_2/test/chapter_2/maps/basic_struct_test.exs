defmodule Chapter2.Maps.BasicStructTest do
  use ExUnit.Case

  alias Chapter2.Maps.{BasicStruct, Person}

  describe "create_person/0" do
    test "pattern matches a struct" do
      expected_value = "Influencer"
      actual_value = BasicStruct.create_person()

      assert %{occupation: ^expected_value} = actual_value
    end

    test "cannot match on equality" do
      expected_value = %Person{
        name: "Fred",
        age: 20,
        city: "Manchester",
        occupation: "Influencer",
        sport: "Dancing",
        food: "Pizza",
        place: "Thailand",
        created: DateTime.utc_now(),
        updated: DateTime.utc_now()
      }
      actual_value = BasicStruct.create_person()

      refute expected_value == actual_value
    end
  end
end
