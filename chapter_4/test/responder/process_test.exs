defmodule Chapter4.ResponderProcessTest do
  use ExUnit.Case

  alias Chapter4.ResponderProcess

  describe "start/0" do
    test "responds to caller process when a message is received" do
      process = ResponderProcess.start()
      caller_pid = self()
      message = "Hello World"
      response_status = :hello
      response_message = "Hello World received from #{inspect(caller_pid)}"

      send process, {:hello, message, caller_pid}

      Process.info(caller_pid) |> Enum.into(%{})

      assert_receive %{status: ^response_status, message: ^response_message}
    end
  end
end
