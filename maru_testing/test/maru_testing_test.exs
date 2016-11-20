defmodule MaruTestingTest do
  use ExUnit.Case
  doctest MaruTesting
end

defmodule B1A1Test do
  use ExUnit.Case
  use Maru.Test, for: B1 |> A1

  test "/" do
    private = get("/").private
    assert 1 == private.maru_plug_tb
    assert false == Map.has_key?(private, :maru_plug_ta)
  end
end

defmodule B1A2Test do
  use ExUnit.Case
  use Maru.Test, for: B1 |> A2

  test "/" do
    private = get("/").private
    assert 1 == private.maru_plug_tb
    assert 0 == private.maru_plug_ta
  end
end

defmodule B2A1Test do
  use ExUnit.Case
  use Maru.Test, for: B2 |> A1

  test "/" do
    private = get("/").private
    assert 2 == private.maru_plug_tb
    assert false == Map.has_key?(private, :maru_plug_ta)
  end
end

defmodule B2A2Test do
  use ExUnit.Case
  use Maru.Test, for: B2 |> A2

  test "/" do
    private = get("/").private
    assert 2 == private.maru_plug_tb
    assert 0 == private.maru_plug_ta
  end
end

defmodule ETest do
  use ExUnit.Case
  use Maru.Test, for: E

  test "/e" do
    private = get("/e").private
    assert 1 == private.maru_plug_tb
    assert 0 == private.maru_plug_ta
  end
end
