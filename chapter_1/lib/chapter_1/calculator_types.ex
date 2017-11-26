defmodule Chapter1.CalculatorTypes do

  @moduledoc false
  @spec add(number, number) :: number
  def add(a, b) when is_integer(a) and is_integer(b) do
    a + b
  end

  @spec add(any, any) :: String.t
  def add(_a, _b), do: "Incorrect type received as arguments"

end
