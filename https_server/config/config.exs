use Mix.Config

config :maru, HttpsServer.API,
  http: [
    port: 8800,
  ],
  https: [
    port: 8801,
    password: "yourpassword",
    keyfile: "/tmp/server.key",
    certfile: "/tmp/server.crt",
  ]
