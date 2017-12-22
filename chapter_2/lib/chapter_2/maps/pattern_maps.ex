defmodule Chapter2.Maps.PatternMaps do
  @moduledoc """
    A basic module to practice pattern matching on a map
  """

  @doc """
    Returns a map
  """

  def initialState() do
    %{
      name: "Dave",
      age: 40,
      city: "London",
      occupation: "Lumberjack",
      time_now: DateTime.utc_now(),
      sport: "Football",
      food: "Thai",
      place: "Australia"
    }
  end
end
