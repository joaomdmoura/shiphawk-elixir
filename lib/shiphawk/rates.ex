defmodule Shiphawk.Rates do
  @moduledoc """
  Reponsible to handle the Rates logic and endpoints.
  """

  alias Shiphawk.Request
  alias Shiphawk.Address
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
    items = [%{
      package_type: "box",
      item_type: "handling_unit",
      handling_unit_type: "pallet", # Must be "pallet", "carton", "box", "crate", or "bag"
      length: "10",
      width: "10",
      height: "11",
      weight: "10",
      value: 100.00
    }]

    from = %{ "zip" => "93101"}
    to = %{ "zip" => "60060"}

    Shiphawk.Rates.get(items, from, to)
    ```
  """
  def get(items, from, to) do
    items = Enum.map(items, fn(item)->
      struct(Item, item)
    end)

    data = %{
      items: items,
      origin_address: from,
      destination_address: to,
    }

    Request.post_request(@path, data)
  end
end
