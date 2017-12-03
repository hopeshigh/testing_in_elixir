defmodule Chapter1.CalculatorComplete do

  @moduledoc """
    Implements a basic Calculator that performs rudimentary calculations 
  """

  @doc """
  Adds two numbers together

  ## Examples

      iex> Chapter1.CalculatorComplete.add(2, 3)
      5

      iex> Chapter1.CalculatorComplete.add("hello", "world")
      "Incorrect type received as arguments"

  """

  def add(a, b) when is_integer(a) and is_integer(b) do
    a + b
  end
  def add(_a, _b), do: flag_incorrect_type()

  @doc """
    Subtracts two numbers

  ## Examples

      iex> Chapter1.CalculatorComplete.subtract(10, 3)
      7

      iex> Chapter1.CalculatorComplete.subtract("hello", "world")
      "Incorrect type received as arguments"

  """

  def subtract(a, b) when is_integer(a) and is_integer(b) do
    a - b
  end
  def subtract(_a, _b), do: flag_incorrect_type()

  @doc """
    Multiplies two numbers together

  ## Examples

      iex> Chapter1.CalculatorComplete.multiply(2, 3)
      6

      iex> Chapter1.CalculatorComplete.multiply("hello", "world")
      "Incorrect type received as arguments"

  """

  def multiply(a, b) when is_integer(a) and is_integer(b) do
    a * b
  end
  def multiply(_a, _b), do: flag_incorrect_type()

  @doc """
    Divides two numbers

  ## Examples

      iex> Chapter1.CalculatorComplete.divide(25, 5)
      5.0

      iex> Chapter1.CalculatorComplete.divide("hello", "world")
      "Incorrect type received as arguments"

  """

  def divide(a, b) when is_integer(a) and is_integer(b) do
    a / b
  end
  def divide(_a, _b), do: flag_incorrect_type()

  defp flag_incorrect_type, do: "Incorrect type received as arguments"

end
