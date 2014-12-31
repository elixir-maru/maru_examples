defmodule EchoServer do
end

defmodule EchoServer.API1 do
  use Maru.Router
  plug Plug.Logger

  get do
    "It works! port: 8800" |> text
  end
end

defmodule EchoServer.API2 do
  use Maru.Router
  plug Plug.Logger

  get do
    "It works! port: 8801" |> text
  end

  def error(conn, err) do
    "ERROR: #{inspect err}" |> text(500)
  end
end
