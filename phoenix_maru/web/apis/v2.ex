defmodule PhoenixMaru.APIs.Router.V2 do
  use Maru.Router
  version "v2"

  get do
    text(conn, "Router: v2")
  end
end
