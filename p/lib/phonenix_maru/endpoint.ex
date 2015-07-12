defmodule PhonenixMaru.Endpoint do
  use Phoenix.Endpoint, otp_app: :phonenix_maru

  plug Plug.Static,
    at: "/", from: :phonenix_maru

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_phonenix_maru_key",
    signing_salt: "MC7trGT/",
    encryption_salt: "i+pgK+fW"

  plug Maru.Plugs.Forword, at: "/api", to: PhoenixMaru.API
  plug :router, PhonenixMaru.Router
end
