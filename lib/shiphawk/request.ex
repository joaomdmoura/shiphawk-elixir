defmodule Shiphawk.Request do
  @moduledoc """
  Module responible for doing the requests to
  ShipHawk's API
  """

  @api_key Application.get_env(:shiphawk, :api_key)
  @adapter Application.get_env(:shiphawk, :adapter)

  @doc """
  post/2 is the function responsible for doing post requests.

  ## Parameters

    - `path`: A string indicating the path of ShipHaw's API.
    - `data`: Map with all data the should be send within this request.

  ## Example
    ```
    Shiphawk.Request.post('/rates', data)
    ```
  """
  def post_request(path, data) do
    response = path
      |> format_url
      |> @adapter.post(data)

    response.body
  end

  defp format_url(path) do
    path <> "?api_key="  <> @api_key
  end
end
