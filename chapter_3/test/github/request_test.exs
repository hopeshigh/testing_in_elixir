defmodule Chapter3.Github.RequestTest do
  use ExUnit.Case

  alias Chapter3.Github.Request

  @tag :external_api
  describe "Actual GitHub request" do
    test "returns 200 heartbeat check" do
      assert {:ok, %HTTPoison.Response{status_code: 200}} = Request.request()
    end
  end
end
