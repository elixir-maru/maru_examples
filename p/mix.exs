defmodule PhonenixMaru.Mixfile do
  use Mix.Project

  def project do
    [app: :phonenix_maru,
     version: "0.1.0",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  def application do
    [mod: {PhonenixMaru, []},
     applications: [:phoenix, :cowboy, :logger]]
  end

  defp deps do
    [{:phoenix, "~> 0.14"},
     {:cowboy, "~> 1.0"},
     {:maru, "~> 0.4"},
    ]
  end
end
