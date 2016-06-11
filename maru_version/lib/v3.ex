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
    conn |> text("It works V3!")
  end
end
