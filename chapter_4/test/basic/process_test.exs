defmodule Chapter4.BasicProcessTest do
  use ExUnit.Case

  alias Chapter4.BasicProcess

  describe "start/0" do
    test "returns the status of the process" do
      process = BasicProcess.start()
      process_as_map = Process.info(process) |> Enum.into(%{})
      expected_initial_call = {Chapter4.BasicProcess, :receiver, 0}
      expected_messages = []

      assert %{current_function: ^expected_initial_call, messages: ^expected_messages} = process_as_map
      assert Process.alive?(process) == true
    end

    test "receives a :hello message" do
      process = BasicProcess.start()
      message = "World"

      :erlang.trace(process, true, [:receive])

      send process, {:hello, message}

      assert_receive {:trace, ^process, :receive, {:hello, ^message}}
    end

    test "handles other types of messages" do
      process = BasicProcess.start()
      message = "Blah blah blah"

      :erlang.trace(process, true, [:receive])

      send process, {:another_case, message}

      assert_receive {:trace, ^process, :receive, {:another_case, ^message}}
    end
  end

  describe "edge cases when testing processess" do
    test "receives multiple messages when it shouldn't" do
      process = BasicProcess.start()
      message = "World"
      message_2 = "Dave"

      :erlang.trace(process, true, [:receive])

      send process, {:hello, message}

      assert_receive {:trace, ^process, :receive, {:hello, ^message}}

      send process, {:hello, message_2}

      assert_receive {:trace, ^process, :receive, {:hello, ^message_2}}

      %{messages: process_mailbox} = Process.info(process) |> Enum.into(%{})
      assert Process.alive?(process) == true
      assert length(process_mailbox) == 2
    end

    test "correctly exits after receiving a message" do
      process = BasicProcess.start()
      message = "World"
      message_2 = "Dave"

      :erlang.trace(process, true, [:receive])

      send process, {:hello, message}

      assert_receive {:trace, ^process, :receive, {:hello, ^message}}

      :timer.sleep(100)

      send process, {:hello, message_2}

      refute_receive {:trace, ^process, :receive, {:hello, ^message_2}}

      assert Process.alive?(process) == false
    end
  end
end
