
defmodule EggTest do
  use ExUnit.Case

  test "make a new raw egg" do
    raw = RawEgg.new(size: "small")
    assert raw.size == "small"
  end

  test "cook an egg" do
    raw = RawEgg.new(size: "small")
    cooked = Cook.cook(raw)
    inspect cooked
    assert CookedEgg[size: raw.size] == cooked
  end

  test "can't cook a cooked egg" do
    cooked = CookedEgg.new(size: "small")
    try do
      Cook.cook(cooked)
      raise "failure!"
    rescue
      Protocol.UndefinedError -> "foo"
    end
  end

end
