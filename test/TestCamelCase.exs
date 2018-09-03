defmodule TestCamelCase do
  use ExUnit.Case
  import CamelCase
  # , only: [to_camel_case: 1]

  test "to_camel_case" do

    # Regex.split(~r/-|[_]/, str)

    assert to_camel_case("the-stealth-warrior") == "theStealthWarrior"
    assert to_camel_case("The_Stealth_Warrior") == "TheStealthWarrior"
  end
end
