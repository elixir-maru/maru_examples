defmodule PhoenixMaru.APIs.Router.V1 do
  use Maru.Router
  version "v1"

  get do
    text(conn, "Router: v1")
  end
end
