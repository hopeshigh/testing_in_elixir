defmodule FearOfTesting.CalculatorAssertions do

  @moduledoc false

  def add(a, b) when is_integer(a) and is_integer(b) do
    a + b
  end
  def add(_a, _b), do: flag_incorrect_type()

  def subtract(a, b) when is_integer(a) and is_integer(b) do
    a - b
  end
  def subtract(_a, _b), do: flag_incorrect_type()

  def multiply(a, b) when is_integer(a) and is_integer(b) do
    a * b
  end
  def multiply(_a, _b), do: flag_incorrect_type()

  def divide(a, b) when is_integer(a) and is_integer(b) do
    a / b
  end
  def divide(_a, _b), do: flag_incorrect_type()

  defp flag_incorrect_type, do: "Incorrect type received as arguments"

end
