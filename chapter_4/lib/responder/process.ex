defmodule Chapter4.ResponderProcess do

  @moduledoc"""
  A module to demonstrate responding to process calls.

  Within the receive we pass an additional argument of the process sending a message.
  We can respond to that message before the Process dies to acknowledge receipt.
  """

  def start do
    spawn(__MODULE__, :receiver, [])
  end

  def receiver do
    receive do
      {:hello, msg, caller} ->
        send(caller, %{status: :hello, message: "#{msg} received from #{inspect(caller)}"})
      {_, _, caller} ->
        send(caller, %{status: :unknown, message: "Message received from #{inspect(caller)})"})
    end
    receiver()
  end
end
