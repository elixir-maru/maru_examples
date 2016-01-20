defmodule PhoenixMaru.APIs.Homepage do
  use Maru.Router

  if Mix.env == :dev do
    plug MaruSwagger,
      version: "v1",
      at:      "/swagger/v1",
      for:     PhoenixMaru.APIs.Homepage,
      pretty:  true

    plug MaruSwagger,
      version: "v2",
      at:      "/swagger/v2",
      for:     PhoenixMaru.APIs.Homepage,
      pretty:  true
  end

  get do
    text(conn, "API works!")
  end

  resource :router do
    mount PhoenixMaru.APIs.Router.V1
    mount PhoenixMaru.APIs.Router.V2
  end
end

defmodule PhoenixMaru.APIs.Router.V1 do
  use Maru.Router
  version "v1"

  get do
    text(conn, "Router: v1")
  end
end

defmodule PhoenixMaru.APIs.Router.V2 do
  use Maru.Router
  version "v2"

  get do
    text(conn, "Router: v2")
  end
end
