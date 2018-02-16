defmodule Chapter4Test do
  use ExUnit.Case
  doctest Chapter4

  test "greets the world" do
    assert Chapter4.hello() == :world
  end
end
