defmodule MyAPI.API do
  use Maru.Router

  get do
    json(conn, %{hello: :world, my_app: 1})
  end
end
