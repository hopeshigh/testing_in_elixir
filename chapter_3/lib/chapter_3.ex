defmodule Chapter3 do
  @moduledoc """
  A module to make a request to the Github API
  """

  alias Chapter3.Github.Parser

  def entry(url \\ github_url()) do
    case request().call(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        Parser.parse(body)

      {:ok, %HTTPoison.Response{status_code: 404}} ->
        %{status_code: 404, message: "Not found :("}

      {:error, %HTTPoison.Error{reason: reason}} ->
        reason
    end
  end

  defp request do
    Application.get_env(:chapter_3, :github)
  end

  defp github_url do
    "https://api.github.com/search/commits?q=remove+password&per_page=1"
  end
end
