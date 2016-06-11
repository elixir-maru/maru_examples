defmodule MaruVersion.API.V2 do
  use Maru.Router

  version "v2" do
    desc "get v2"
    get do
      conn |> text("It works V2!")
    end

    get :extend do
      conn |> text("This will be extended!")
    end

    get :no_extend do
      conn |> text("This will NOT be extended!")
    end

    mount Maru.Version.API.Shared
  end
end
