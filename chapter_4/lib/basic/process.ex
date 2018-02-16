defmodule Chapter4.BasicProcess do

  @moduledoc"""
  Simple module to demonstrate how a process can be started within a module.

  Within the start function we spawn an instance of this module and name it.
  The pid that gets returned is alive long enough to receive one message before being killed.
  """

  def start do
    spawn(__MODULE__, :receiver, [])
  end

  def receiver do
    receive do
      {:hello, msg} -> IO.puts("Hello, #{msg}")
      {_, _} -> IO.puts("This will handle anything!")
    end
  end
end
