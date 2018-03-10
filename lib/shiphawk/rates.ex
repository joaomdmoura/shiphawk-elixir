defmodule Shiphawk.Rates do
  @moduledoc """
  Reponsible to handle the Rates logic and endpoints.
  """

  alias Shiphawk.Request
  alias Shiphawk.Rates.Item
  @path "/rates"

  @doc """
  get/2 is the function responsible for getting rates for specific set of
  line items and addresses.

  ## Parameters

    - `items`: List of items that are being shipped.
    - `from`: Map with the address where it's being shipped from.
    - `to`: Map with the address where it's being shipped to.

  ## Example
    ```
    items = %Item{
      "package_type" => "box",
      "item_type" => "handling_unit",
      "handling_unit_type" => "parcel" // # Must be "pallet", "carton", "box", "crate", or "bag"
      "length" => "10",
      "width"  => "10",
      "height" => "11",
      "weight" => "10",
      "value" => 100.00
    }

    origin_address = %{ "zip" => "93101"},
    destination_address = %{ "zip" => "60060"}

    Shiphawk.Rates.get(items, form, to)
    ```
  """
  def get(items, from, to) do
    data = %{
      items: items,
      from: from,
      to: to,
    }

    Request.post(@path, data)
  end
end
