defmodule MyAPI2.API do
  use Maru.Router

  get do
    json(conn, %{hello: :world, my_app: 2})
  end
end
