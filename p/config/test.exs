use Mix.Config

config :phonenix_maru, PhonenixMaru.Endpoint,
  http: [port: System.get_env("PORT") || 4001]
