defmodule Chapter4.RecursiveProcessTest do
  use ExUnit.Case

  alias Chapter4.RecursiveProcess

  describe "start/0" do
    test "returns the status of the process" do
      process = RecursiveProcess.start()
      process_as_map = Process.info(process) |> Enum.into(%{})
      expected_initial_call = {Chapter4.RecursiveProcess, :receiver, 0}
      expected_messages = []

      assert %{current_function: ^expected_initial_call, messages: ^expected_messages} = process_as_map
      assert Process.alive?(process) == true
    end

    test "receives a :hello message and stays alive" do
      process = RecursiveProcess.start()
      message = "World"

      :erlang.trace(process, true, [:receive])

      send process, {:hello, message}

      assert_received {:trace, ^process, :receive, {:hello, ^message}}

      :timer.sleep(500)

      assert Process.alive?(process) == true
    end

    test "handles other types of messages and stays alive" do
      process = RecursiveProcess.start()
      message = "Blah blah blah"

      :erlang.trace(process, true, [:receive])

      send process, {:another_case, message}

      assert_received {:trace, ^process, :receive, {:another_case, ^message}}

      :timer.sleep(500)

      assert Process.alive?(process) == true
    end

    test "receives multiple messages and stays alive" do
      process = RecursiveProcess.start()
      message = "World"
      message_2 = "Dave"

      :erlang.trace(process, true, [:receive])

      send process, {:hello, message}

      assert_received {:trace, ^process, :receive, {:hello, ^message}}

      send process, {:hello, message_2}

      assert_received {:trace, ^process, :receive, {:hello, ^message_2}}

      %{messages: process_mailbox} = Process.info(process) |> Enum.into(%{})

      :timer.sleep(1)

      assert Process.alive?(process) == true
      assert length(process_mailbox) == 2
    end
  end
end
