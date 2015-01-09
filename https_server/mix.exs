defmodule HttpsServer.Mixfile do
  use Mix.Project

  def project do
    [app: :https_server,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps]
  end

  def application do
    [applications: [:logger, :maru]]
  end

  defp deps do
    # [{:maru, "~> 0.2.6"}]
    [{:maru, path: "/Volumes/Z/Codes/remote/elixir/maru/"}]
  end
end
