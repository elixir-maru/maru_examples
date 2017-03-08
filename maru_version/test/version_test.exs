defmodule VersionTest do
  use ExUnit.Case

  test "the truth" do
    assert 1 + 1 == 2
  end
end

defmodule V1Test do
  use ExUnit.Case
  use Maru.Test, for: MaruVersion.API.V1

  test "/" do
    assert "It works V1!" = get("/", "v1") |> text_response
  end

  test "/shared" do
    assert "It works for all version!" = get("/shared", "v1") |> text_response
  end
end
