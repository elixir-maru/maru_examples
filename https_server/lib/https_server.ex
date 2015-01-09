defmodule HttpsServer do
end

defmodule HttpsServer.API do
  use Maru.Router
  plug Plug.Logger

  get do
    "It works!" |> text
  end
end
