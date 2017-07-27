defmodule MaruTesting do
end

defmodule PlugNULL do
  def init([]), do: []
  def call(conn, []) do
    conn
  end
end

defmodule PlugPutA0 do
  def init([]), do: []
  def call(conn, []) do
    conn |> Plug.Conn.put_private(:maru_plug_ta, 0)
  end
end

defmodule PlugPutB1 do
  def init([]), do: []
  def call(conn, []) do
    conn |> Plug.Conn.put_private(:maru_plug_tb, 1)
  end
end

defmodule PlugPutB2 do
  def init([]), do: []
  def call(conn, []) do
    conn |> Plug.Conn.put_private(:maru_plug_tb, 2)
  end
end

defmodule A1 do
  use Maru.Router

  pipeline do
    plug_overridable :test_a, PlugNULL
  end
  get :a1 do
    text(conn, "A1")
  end
end

defmodule A2 do
  use Maru.Router

  get :a2 do
    text(conn, "A2")
  end
end


defmodule B1 do
  use Maru.Router
  prefix :b1
  plug_overridable :test_b, PlugPutB1

  mount A1
  mount A2
end

defmodule B2 do
  use Maru.Router
  prefix :b2
  plug_overridable :test_b, PlugPutB2

  mount A1
  mount A2
end

defmodule E do
  use Maru.Router

  get :e do
    text(conn, "E")
  end
end

defmodule D do
  use Maru.Router
  plug PlugPutB1

  namespace :d do
    mount E
  end
end

defmodule C do
  use Maru.Router
  plug PlugPutA0

  namespace :c do
    mount D
  end
end

defmodule API do
  use Maru.Router, make_plug: true
  plug_overridable :test_a, PlugPutA0

  mount B1
  mount B2
  mount C
end
