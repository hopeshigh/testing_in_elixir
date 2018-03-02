defmodule Chapter4.RecursiveProcess do

  @moduledoc"""
  A module to demonstrate how to keep a process alive after receiving a message.

  Within the receiver function we make a tail recursive call to itself.
  This will allow it to handle multiple messages with the same process.
  """

  def start do
    spawn(__MODULE__, :receiver, [])
  end

  def receiver do
    receive do
      {:hello, msg} -> IO.puts("Hello, #{msg}")
      {_, _} -> IO.puts("This will handle anything!")
    end
    receiver()
  end
end
