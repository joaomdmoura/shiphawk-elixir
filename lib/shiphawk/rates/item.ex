defmodule Shiphawk.Rates.Item do
  @moduledoc """
  Module that holds the Item Struct.
  """

  defstruct type: nil, product_sku: nil, unpacked_item_type_id: nil,
            item_type: nil, handling_unit_type: nil, quantity: nil, length: nil,
            width: nil, height: nil, weight: nil, volume_cubic_ft: nil, value: nil,
            freight_class: nil, package_type: nil, package_quantity: nil,
            require_crating: nil, description: nil, nmfc: nil,
            can_ship_parcel: nil, optimize_packing: nil, harmonized_code: nil,
            country_of_origin: nil
end
