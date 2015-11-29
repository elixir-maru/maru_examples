defmodule MaruReload do
end

defmodule MaruReload.API do
  use Maru.Router

  get do
    conn |> text "change to trigger exsync"
  end
end
