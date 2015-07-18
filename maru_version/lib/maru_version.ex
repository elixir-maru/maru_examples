defmodule MaruVersion do
end

defmodule MaruVersion.API do
  use Maru.Router
  plug Plug.Logger

  mount MaruVersion.API.V1
  mount MaruVersion.API.V2
end


defmodule MaruVersion.API.V1 do
  use Maru.Router

  version "v1"

  desc "get v1"
  get do
    "It works V1!"
  end

  mount Maru.Version.API.Shared
end


defmodule MaruVersion.API.V2 do
  use Maru.Router

  version "v2" do
    desc "get v2"
    get do
      "It works V2!"
    end

    mount Maru.Version.API.Shared
  end
end


defmodule Maru.Version.API.Shared do
  use Maru.Router

  desc "shared"
  resource :shared do
    get do
      "It works for all version!"
    end
  end
end
