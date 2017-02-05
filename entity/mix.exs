defmodule Entity.Mixfile do
  use Mix.Project

  def project do
    [ app: :entity,
      version: "0.1.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
    ]
  end

  def application do
    [ mod: {Entity, []},
      extra_applications: [:logger],
    ]
  end

  defp deps do
    [ { :ecto,        "~> 2.1" },
      { :postgrex,    "~> 0.13.0" },
      { :maru_entity, "~> 0.2.0" },
    ]
  end
end
