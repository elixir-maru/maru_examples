defmodule MaruTesting.Mixfile do
  use Mix.Project

  def project do
    [ app: :maru_testing,
      version: "0.1.0",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
    ]
  end

  def application do
    [applications: [:logger, :maru]]
  end

  defp deps do
    [{:maru, "~> 0.12"}]
  end
end
