defmodule MaruTesting do
end

defmodule NUL do
  def init([]), do: []
  def call(conn, []) do
    conn
  end
end

defmodule TA do
  def init([]), do: []
  def call(conn, []) do
    conn |> Plug.Conn.put_private(:maru_plug_ta, 0)
  end
end

defmodule TB1 do
  def init([]), do: []
  def call(conn, []) do
    conn |> Plug.Conn.put_private(:maru_plug_tb, 1)
  end
end

defmodule TB2 do
  def init([]), do: []
  def call(conn, []) do
    conn |> Plug.Conn.put_private(:maru_plug_tb, 2)
  end
end

defmodule A1 do
  use Maru.Router

  pipeline do
    plug_overridable :test_a, NUL
  end
  get do
    text(conn, "A1")
  end
end

defmodule A2 do
  use Maru.Router

  get do
    text(conn, "A2")
  end
end


defmodule B1 do
  use Maru.Router
  plug_overridable :test_b, TB1

  mount A1
  mount A2
end

defmodule B2 do
  use Maru.Router
  plug_overridable :test_b, TB2

  mount A1
  mount A2
end

defmodule API do
  use Maru.Router
  plug_overridable :test_a, TA

  mount B1
  mount B2
end
