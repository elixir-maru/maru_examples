defmodule HttpsServerTest do
  use ExUnit.Case
  use Maru.Test, for: HttpsServer.API

  test "/" do
    assert %Plug.Conn {
      resp_body: "It works!"
    } = conn(:get, "/") |> make_response("v1")
  end
end
