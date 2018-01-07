defmodule Chapter2.Maps.BasicMaps do
  @moduledoc """
    A basic module that contains a basic map to be tested
  """

  def basic_map() do
    %{
      name: "Dave",
      age: 40,
      city: "London",
      occupation: "Lumberjack",
      sport: "Football",
      food: "Thai",
      place: "Australia"
    }
  end
end
