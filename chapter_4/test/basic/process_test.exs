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

      assert_received {:trace, ^process, :receive, {:hello, ^message}}
      assert Process.alive?(process) == true
    end

    test "handles other types of messages" do
      process = BasicProcess.start()
      message = "Blah blah blah"

      :erlang.trace(process, true, [:receive])

      send process, {:another_case, message}

      assert_received {:trace, ^process, :receive, {:another_case, ^message}}
      assert Process.alive?(process) == true
    end

    test "cannot handle multiple messages" do
      process = BasicProcess.start()
      message = "World"

      :erlang.trace(process, true, [:receive])

      send process, {:hello, message}

      assert_received {:trace, ^process, :receive, {:hello, ^message}}

      send process, {:hello, message}
      assert Process.alive?(process) == true
    end
  end
end
