defmodule Chapter3.Github do
  @doc "Callbacks for interacting with Github API"

  @callback request() :: String.t()
end
