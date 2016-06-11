defmodule PhoenixMaru.APIs.Versioning.Path do
  use Maru.Router, make_plug: true
  use MaruSwagger

  prefix :versioning_path

  swagger at:     "/swagger",
          pretty: true,
          except:   [:prod]

  get do
    text(conn, "API for path versioning works!")
  end

  resource :router do
    mount PhoenixMaru.APIs.Router.V1
    mount PhoenixMaru.APIs.Router.V2
  end

end
