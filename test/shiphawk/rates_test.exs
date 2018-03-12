defmodule Shiphawk.RatesTest do
  use ExUnit.Case
  alias Shiphawk.Rates

  doctest Shiphawk

  test "get/3 should return an tuple with the rates as response" do
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

    from = %{"zip" => "93101"}
    to = %{"zip" => "60060"}

    assert Rates.get(items, from, to) == {:ok, %{
      "rates" => [
      %{
        "carrier" => "Pilot",
        "carrier_code" => "pilot",
        "currency_code" => "USD",
        "destination_network_location_id" => nil,
        "est_delivery_date" => "2018-03-20T00:00:00.000-05:00",
        "id" => "rate_211p5EmFfhVf1VZ4nQJkgZDa",
        "origin_network_location_id" => nil,
        "price" => 146.19,
        "service_days" => 5,
        "service_level" => "Basic",
        "service_name" => "Basic",
        "standardized_service_name" => "Standard Freight"
      }, %{
        "carrier" => "Pilot",
        "carrier_code" => "pilot",
        "currency_code" => "USD",
        "destination_network_location_id" => nil,
        "est_delivery_date" => "2018-03-20T00:00:00.000-05:00",
        "id" => "rate_mjWXvYj78nDYKjxeG7sN9Tbn",
        "origin_network_location_id" => nil,
        "price" => 164.94,
        "service_days" => 5,
        "service_level" => "Standard One Man",
        "service_name" => "Standard One Man",
        "standardized_service_name" => "Threshold"
      }
    ]}}
  end
end