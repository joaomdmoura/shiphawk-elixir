defmodule Shiphawk.Request.Adapters.Test do
  @moduledoc false

  def post(_path, _data) do
    %{
      body: %{
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
        ]
      }
    }
  end
end
