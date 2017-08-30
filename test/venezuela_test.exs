defmodule VenezuelaTest do
  use ExUnit.Case
  doctest Venezuela

  test "create persona" do
    assert "Mijail" == Venezuela.persona(19422852).nombres
  end
end
