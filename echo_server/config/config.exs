use Mix.Config

config :maru, EchoServer.API1,
  http: [port: 8800]

config :maru, EchoServer.API2,
  http: [port: 8801]
