defmodule HttpsServer.Mixfile do
  use Mix.Project

  def project do
    [app: :https_server,
     version: "0.1.0",
     elixir: "~> 1.0",
     deps: deps]
  end

  def application do
    [applications: [:logger, :maru]]
  end

  defp deps do
    [{:maru, "~> 0.10"}]
  end
end
