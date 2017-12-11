defmodule Chapter2.PatternLists do

  @moduledoc """
    A basic module to add elements of any type to a list
  """

  @doc """
    Builds a list out of elements of any type passed into the function.
    Elements that are not already of the type List are converted before
    being passed back into the function.

  ## Examples

      iex> Chapter2.PatternLists.add_item(2, 3)
      [2, 3]

      iex> Chapter2.PatternLists.add_item([2], [3])
      [2, 3]

      iex> Chapter2.PatternLists.add_item("Hello", "World")
      ["Hello", "World"]

  """

  def add_item(item),             do: add_item([], [item])
  def add_item(state, item) when is_list(state) and is_list(item)  do
    state ++ item
  end
  def add_item(state, item) when is_list(state) do
    add_item(state, [item])
  end
  def add_item(state, item) when is_list(item) do
    add_item([state], item)
  end
  def add_item(state, item) do
    add_item([state], [item])
  end
end
