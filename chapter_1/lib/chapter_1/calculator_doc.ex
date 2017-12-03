defmodule Chapter1.CalculatorDoc do

@moduledoc """
  Implements a basic Calculator that performs rudimentary calculations 
"""

@doc """
  Adds two numbers together

  ## Examples

      iex> Chapter1.CalculatorDoc.add(2, 3)
      5

      iex> Chapter1.CalculatorDoc.add("hello", "world")
      "Incorrect type received as arguments"

  """
  
  def add(a, b) when is_integer(a) and is_integer(b) do
    a + b
  end

  def add(_a, _b), do: "Incorrect type received as arguments"

end
