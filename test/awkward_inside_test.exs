defmodule AwkwardInsideTest do
  use ExUnit.Case
  doctest AwkwardInside

  test "greets the world" do
    assert AwkwardInside.hello() == :world
  end
end
