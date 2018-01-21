defmodule Chapter3.Github.Parser do
  def parse(input) do
    {:ok, %{"items" => decoded_body}} = decode(input)

    decoded_body
    |> Enum.map(&extract_and_construct/1)
  end

  defp extract_and_construct(input) do
    url = extract(:url, input)
    author = extract(:author, input)

    construct_map(url, author)
  end

  defp extract(:url, input) do
    %{"html_url" => url} = input
    url
  end

  defp extract(:author, input) do
    %{"commit" => %{"author" => author}} = input
    author
  end

  defp decode(input) do
    Poison.decode(input)
  end

  defp construct_map(url, author) do
    %{
      url: url,
      author: author
    }
  end
end
