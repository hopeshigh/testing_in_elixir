defmodule Chapter2.Maps.NestedMaps do
  @moduledoc """
    A basic module that contains a nested map to be tested
  """

  def nested_map() do
    %{
      company: "Hyperion",
      employees: %{
        name: "Handsome Jack",
        role: "CEO",
        pets: "Butt Stallion"
      }
    }
  end
end
