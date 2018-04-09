defmodule DirectionsTest do
  use ExUnit.Case

   test "#reduce 1" do
  #  directions = ~w[NORTH WEST SOUTH EAST]
  directions = ~w[NORTH NORTH WEST SOUTH EAST]
  #directions = ~w[]
    message = "#{directions} cannot be reduced further"
    assert Directions.reduce(directions) == directions, message
  end

end
