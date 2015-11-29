defmodule MaruVersion do
end

defmodule MaruVersion.API do
  use Maru.Router
  plug Plug.Logger

  mount MaruVersion.API.V1
  mount MaruVersion.API.V2
  mount MaruVersion.API.V3
end


defmodule MaruVersion.API.V1 do
  use Maru.Router

  version "v1"

  desc "get v1"
  get do
    conn |> text "It works V1!"
  end

  mount Maru.Version.API.Shared
end


defmodule MaruVersion.API.V2 do
  use Maru.Router

  version "v2" do
    desc "get v2"
    get do
      conn |> text "It works V2!"
    end

    get :extend do
      conn |> text "This will be extended!"
    end

    get :no_extend do
      conn |> text "This will NOT be extended!"
    end

    mount Maru.Version.API.Shared
  end
end


defmodule MaruVersion.API.V3 do
  use Maru.Router
  # version "v3", extend: "v2", at: MaruVersion.API.V2

  version "v3", extend: "v2", at: MaruVersion.API.V2, only: [
    get: "/extend",
    # match: "/extend/*",
  ]

  # version "v3", extend: "v2", at: MaruVersion.API.V2, except: [
  #   get: "/no_extend",   # match will me matched for all method
  # ]

  get do
    conn |> text "It works V3!"
  end
end


defmodule Maru.Version.API.Shared do
  use Maru.Router

  desc "shared"
  resource :shared do
    get do
      conn |> text "It works for all version!"
    end
  end
end
