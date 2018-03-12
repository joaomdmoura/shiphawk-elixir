defmodule Shiphawk.RatesTest do
  use ExUnit.Case
  alias Shiphawk.Rates

  doctest Shiphawk

  test "get/3 should format and send request" do
    items = [%{
      package_type: "box",
      item_type: "handling_unit",
      handling_unit_type: "pallet",
      length: "10",
      width: "10",
      height: "11",
      weight: "10",
      value: 100.00
    }]

    from = %{ "zip" => "93101"}
    to = %{ "zip" => "60060"}

    assert Rates.get(items, from, to) == {:ok, %{rates: []}}
  end
end