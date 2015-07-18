use Mix.Config

config :maru, MaruVersion.API,
  versioning: [
    using: :path
  ],
  http: [port: 4001]

# config :maru, MaruVersion.API,
#   versioning: [
#     using: :param,
#     parameter: "v"
#   ],
#   http: [port: 4001]

# config :maru, MaruVersion.API,
#   versioning: [
#     using: :accept_version_header
#   ],
#   http: [port: 4001]
