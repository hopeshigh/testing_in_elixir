defmodule Chapter3.Github.ParserTest do
  use ExUnit.Case

  alias Chapter3.Github.Parser

  describe "parse/1" do
    test "returns a constructed map" do
      input = "{\"items\":[{\"html_url\":\"https://myfakeurl.test\",\"commit\":{\"author\":{\"date\":\"2018-01-19T15:01:01.000+05:30\",\"name\":\"Fake Dave\"}}}]}"
      url = "https://myfakeurl.test"

      assert [%{url: ^url}] = Parser.parse(input)
    end
  end
end
