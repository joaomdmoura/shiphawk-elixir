defmodule ShiphawkTest do
  use ExUnit.Case
  doctest Shiphawk

  test "greets the world" do
    assert Shiphawk.hello() == :world
  end
end
