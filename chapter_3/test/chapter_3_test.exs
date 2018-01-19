defmodule Chapter3Test do
  use ExUnit.Case

  alias Chapter3

  describe "" do
    test "does some things" do
      actual = Chapter3.entry()
      expected_name = "Fake Dave"
      expected_email = "dave@fakeemail.test"

      assert [%{author: %{"email" => ^expected_email, "name" => ^expected_name}}] = actual
    end
  end
end
