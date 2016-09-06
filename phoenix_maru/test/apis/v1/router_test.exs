defmodule PhoenixMaru.APIs.Router.V1Test do
  use ExUnit.Case
  use Maru.Test, for: PhoenixMaru.APIs.Router.V1

  test "/" do
    assert %Plug.Conn{resp_body: "Router: v1"} = get("/")
  end
end
