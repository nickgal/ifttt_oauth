defmodule IftttOauth.Mixfile do
  use Mix.Project

  def project do
    [app: :ifttt_oauth,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :oauth2]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:oauth2, "~> 0.4"}]
  end

  defp description do
     """
     A simple Elixir wrapper around scrogson/oauth2 to retrieve IFTTT Bearer tokens from their mobile api.
     """
   end

   defp package do
     [maintainers: ["Nick Gal"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/nickgal/ifttt_oauth"}]
   end

end
