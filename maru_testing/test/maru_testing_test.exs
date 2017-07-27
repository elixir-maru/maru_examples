defmodule MaruTestingTest do
  use ExUnit.Case
  doctest MaruTesting
end

defmodule B1A1Test do
  use ExUnit.Case
  use Maru.Test, root: API

  test "/b1/a1" do
    private = get("/b1/a1").private
    assert 1 == private.maru_plug_tb
    assert false == Map.has_key?(private, :maru_plug_ta)
  end
end

defmodule B1A2Test do
  use ExUnit.Case
  use Maru.Test, root: API

  test "/b1/a2" do
    private = get("/b1/a2").private
    assert 1 == private.maru_plug_tb
    assert 0 == private.maru_plug_ta
  end
end

defmodule B2A1Test do
  use ExUnit.Case
  use Maru.Test, root: API

  test "/b2/a1" do
    private = get("/b2/a1").private
    assert 2 == private.maru_plug_tb
    assert false == Map.has_key?(private, :maru_plug_ta)
  end
end

defmodule B2A2Test do
  use ExUnit.Case
  use Maru.Test, root: API

  test "/b2/a2" do
    private = get("/b2/a2").private
    assert 2 == private.maru_plug_tb
    assert 0 == private.maru_plug_ta
  end
end

defmodule ETest do
  use ExUnit.Case
  use Maru.Test, root: API

  test "/c/d/e" do
    private = get("/c/d/e").private
    assert 1 == private.maru_plug_tb
    assert 0 == private.maru_plug_ta
  end
end
