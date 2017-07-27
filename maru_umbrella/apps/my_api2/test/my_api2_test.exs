defmodule MyApi2Test do
  use ExUnit.Case
  doctest MyApi2

  test "greets the world" do
    assert MyApi2.hello() == :world
  end
end
