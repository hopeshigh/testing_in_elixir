defmodule Chapter3.Github do
  @doc "Callbacks for interacting with Github API"

  @callback call(url :: String.t) :: %HTTPoison.Response{}
end
