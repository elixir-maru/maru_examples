defmodule EchoServer do
end

defmodule EchoServer.API1 do
  use Maru.Router
  plug Plug.Logger

  get do
    "It works! port: 8800"
  end
end

defmodule EchoServer.API2 do
  use Maru.Router
  plug Plug.Logger

  get do
    "It works! port: 8801"
  end

  rescue_from :all, as: e do
    status 500
    "ERROR: #{inspect e}"
  end
end
