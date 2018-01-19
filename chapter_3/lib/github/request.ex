defmodule Chapter3.Github.Request do
  @behaviour Chapter3.Github

  def request do
    HTTPoison.get(github_url(), headers(), [])
  end

  defp github_url do
    "https://api.github.com/search/commits?q=remove+password&per_page=1"
  end

  defp headers do
    [
      Accept: "application/vnd.github.cloak-preview",
      "Content-Type": "application/json"
    ]
  end
end
