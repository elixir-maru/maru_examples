defmodule EchoServer do
end

defmodule EchoServer.API1 do
  use Maru.Router
  plug Plug.Logger

  get do
    conn |> text "It works! port: 8800"
  end
end

defmodule EchoServer.API2 do
  use Maru.Router
  plug Plug.Logger

  get do
    conn |> text "It works! port: 8801"
  end

  rescue_from :all, as: e do
    conn
    |> put_status(500)
    |> text("ERROR: #{inspect e}")
  end
end
