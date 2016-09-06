defmodule PhoenixMaru.APIs.Homepage do
  use Maru.Router, make_plug: true
  use MaruSwagger

  swagger at:     "/swagger",
    pretty: true

  get do
    text(conn, "API works!")
  end

  resource :router do
    mount PhoenixMaru.APIs.Router.V1
    mount PhoenixMaru.APIs.Router.V2
  end
end
