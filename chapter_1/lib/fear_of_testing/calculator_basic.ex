defmodule FearOfTesting.CalculatorBasic do

  @moduledoc false
  def add(a, b) when is_integer(a) and is_integer(b) do
    a + b
  end

  def add(_a, _b), do: "Incorrect type received as arguments"

end
