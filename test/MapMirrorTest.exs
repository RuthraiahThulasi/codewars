
defmodule TestSolution do
  use ExUnit.Case


MapMirror.mirror(%{"hello" => "world",
   "hello1" => "world",
   "hello2" => "world"})

  test "some test description" do
    assert "actual" == "expected"
  end
end
