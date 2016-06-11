defmodule MaruVersion.API.V1 do
  use Maru.Router

  version "v1"

  desc "get v1"
  get do
    conn |> text("It works V1!")
  end

  mount Maru.Version.API.Shared
end
