defmodule Shiphawk.Request do
  @moduledoc """
  Module responible for doing the requests to
  ShipHaw's API
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://shiphawk.com/api/v4"
  plug Tesla.Middleware.JSON

  @api_key Application.get_env(:shiphawk, :api_key)

  @doc """
  post/2 is the function responsible for doing post requests.

  ## Parameters

    - `path`: A string indicating the path of ShipHaw's API.
    - `data`: Map with all data the should be send within this request.

  ## Example
    ```
    data = %{
      "items" =>[%{
        "item_type" => "parcel",
        "length" => "10",
        "width"  => "10",
        "height" => "11",
        "weight" => "10",
        "value" => 100.00
      }],
      "origin_address" => %{ "zip" => "93101"},
      "destination_address" => %{ "zip" => "60060"}
    }

    Shiphawk.Request.post('/rates', data)
    ```
  """
  def post(path, data) do
    response = path
      |> format_url
      |> post(data)

    IO.inspect response
    {:ok, response}
  end

  defp format_url(path) do
    path <> "?api_key="  <> @api_key
  end
end
