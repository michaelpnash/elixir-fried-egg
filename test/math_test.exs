defmodule MathTest do
  use ExUnit.Case
  import Math

  test "the zero function" do
    assert zero?(0)
  end

  test "the zero given non-zero" do
    assert zero?(3) == false
  end

end
