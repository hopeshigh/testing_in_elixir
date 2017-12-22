defmodule Chapter2.Maps.BasicMaps do
  @moduledoc """
    A basic module to extract values from a map and return another map
  """

  @doc """
    Extracts specific values from a map
    Transforms these values into another map
    Returns this map

  ## Examples

      iex> Chapter2.Maps.BasicMaps.get_value(:name)
      "Dave"


  """

  @doc """
    Returns a map of chosen pairs and emotion
  """
  @spec build_map_of_emotions(emotion :: atom, values :: [atom]) :: map
  def build_map_of_emotions(emotion, values) do
    request = {emotion, extract_values(values)}

    construct_map(request)
  end

  @doc """
    Returns the values of chosen keys as a map
  """
  @spec extract_values(values :: [atom]) :: map
  def extract_values(values) do
    initialState()
    |> Map.take(values)
  end

  @doc """
    Returns a condensed excited map
  """
  @spec construct_map({emotion :: atom, values :: map}) :: map
  def construct_map({:excited, values}) do
     Enum.reduce(values, %{}, fn (map, acc) ->
      {key, value} = map

      Map.put(acc, key, be_excited(value))
      end)
  end

  @doc """
    Returns a condensed sad map
  """
  @spec construct_map({emotion :: atom, values :: map}) :: map
  def construct_map({:sad, values}) do
     Enum.reduce(values, %{}, fn (map, acc) ->
      {key, value} = map

      Map.put(acc, key, be_sad(value))
      end)
  end

  defp be_excited(value) when is_integer(value) do
    number =
      value
      |> Integer.to_string()
      |> String.upcase()

    number <> "!!!!"
  end

  defp be_excited(value) do
    String.upcase(value) <> "!!!!"
  end

  defp be_sad(value) when is_integer(value) do
    Integer.to_string(value) <> " :("
  end

  defp be_sad(value) do
    value <> " :("
  end

  defp initialState() do
    %{
      name: "Dave",
      age: 40,
      city: "London",
      occupation: "Lumberjack",
      todays_date: DateTime.utc_now()
      favourites: %{
        sport: "Football",
        food: "Thai",
        place: "Australia"
      }
    }
  end
end
