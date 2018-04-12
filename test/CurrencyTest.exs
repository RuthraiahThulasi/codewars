# TODO: Replace examples and use TDD development by writing your own tests

defmodule CurrencyTest do
  use ExUnit.Case

  test "some test description" do
    assert Currency.make_change(43) == %{D: 1, N: 1, P: 3, Q: 1}
    assert Currency.make_change(91) == %{H: 1, Q: 1, D: 1, N: 1, P: 1}
  end
end
