defmodule Chapter3 do
  @moduledoc """
  A module to make a request to the Github API
  """

  alias Chapter3.Github.Parser

  def entry do
    case request().request() do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        Parser.parse(body)

      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts("Not found :(")

      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect(reason)
    end
  end

  defp request do
    Application.get_env(:chapter_3, :github)
  end
end
