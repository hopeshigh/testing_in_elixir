defmodule Chapter3Test do
  use ExUnit.Case

  alias Chapter3

  describe "entry/1" do
    test "returns a map on a successful request" do
      actual = Chapter3.fetch("valid_url")
      expected_name = "Fake Dave"
      expected_email = "dave@fakeemail.test"

      assert [%{author: %{"email" => ^expected_email, "name" => ^expected_name}}] = actual
    end

    test "returns a 404 message for an invalid url" do
      expected = %{status_code: 404, message: "Not found :("}
      assert expected == Chapter3.fetch("invalid_url")
    end

    test "returns the error message for an error" do
      expected = "Something went wrong"
      assert expected == Chapter3.fetch("error")
    end
  end
end
