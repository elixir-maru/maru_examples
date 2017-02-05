use Mix.Config

config :entity, ecto_repos: [Entity.Repo]

config :entity, Entity.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "entity_test",
  username: "postgres",
  password: "",
  hostname: "localhost"
