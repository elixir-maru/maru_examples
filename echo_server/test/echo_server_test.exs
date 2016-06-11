defmodule EchoServerTest do
  defmodule API1Test do
    use ExUnit.Case
    use Maru.Test, for: EchoServer.API1

    test "/" do
      assert %Plug.Conn{
        resp_body: "It works! port: 8800"
      } = conn(:get, "/") |> make_response
    end
  end

  defmodule API2Test do
    use ExUnit.Case
    use Maru.Test, for: EchoServer.API2

    test "/" do
      assert %Plug.Conn{
        resp_body: "It works! port: 8801"
      } = conn(:get, "/") |> make_response("v1")
    end

    test "/path" do
      assert %Plug.Conn{
        status: 500
      } = conn(:get, "/path") |> make_response("v1")
    end

  end
end
