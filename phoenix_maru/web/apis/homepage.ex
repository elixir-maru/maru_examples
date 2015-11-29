defmodule PhoenixMaru.APIs.Homepage do
  use Maru.Router

  get do
    conn |> text "API works!"
  end

end
