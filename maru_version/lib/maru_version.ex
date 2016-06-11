defmodule MaruVersion do
end

defmodule MaruVersion.API do
  use Maru.Router
  plug Plug.Logger

  mount MaruVersion.API.V1
  mount MaruVersion.API.V2
  mount MaruVersion.API.V3
end
