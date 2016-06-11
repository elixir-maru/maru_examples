defmodule Maru.Version.API.Shared do
  use Maru.Router

  desc "shared"
  resource :shared do
    get do
      conn |> text("It works for all version!")
    end
  end
end
