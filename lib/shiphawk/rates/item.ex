defmodule Shiphawk.Rates.Item do
  @moduledoc """
  Module that holds the Item Struct.
  """

  defstruct :type, :product_sku, :unpacked_item_type_id, :handling_unit_type,
            :quantity, :length, :width, :height, :weight, :volume_cubic_ft.
            :value, :freight_class, :package_type, :package_quantity,
            :require_crating, :description, :nmfc, :can_ship_parcel,
            :optimize_packing, :harmonized_code, :country_of_origin
end
