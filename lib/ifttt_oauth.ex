defmodule IftttOauth do
  use OAuth2.Strategy

  # Public API

  def new do
    OAuth2.new([
      strategy: __MODULE__,
      client_id: "29a6d019cb7bbdb43734e3b11d6f9fd77e834910b00d984cdba1172016218282",
      client_secret: "70b359d9ff2bf628e62c8c7baf75b14b360e881556f7b268e71ec1535444703f",
      token_url: "https://mobile-api.ifttt.com/api/v2/users/token"
    ])
  end

  # you can pass options to the underlying http library via `options` parameter
  def get_token!(params \\ [], headers \\ [], options \\ []) do
    OAuth2.Client.get_token!(new(), params, headers, options)
  end

  # Strategy Callbacks
  def get_token(client, params, headers) do
    client
    |> put_header("Accept", "application/json")
    |> OAuth2.Strategy.Password.get_token(params, headers)
  end
end
