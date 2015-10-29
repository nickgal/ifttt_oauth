# IftttOauth

A simple Elixir wrapper around [scrogson/oauth2](https://github.com/scrogson/oauth2) to retrieve
IFTTT Bearer tokens from their mobile api.

## Installation


First, add ifttt_oauth to your list of dependencies in `mix.exs`:
```elixir
def deps do
  [{:ifttt_oauth, "~> 0.0.1"}]
end
```

Next, ensure ifttt_oauth is started before your application:
```elixir
def application do
  [applications: [:ifttt_oauth]]
end
```

## Usage

```elixir
iex> response = IftttOauth.get_token! username: "nickgal", password: "password"
iex> response.other_params # Data returned from IFTTT
```

## License
[MIT](LICENSE.md)
