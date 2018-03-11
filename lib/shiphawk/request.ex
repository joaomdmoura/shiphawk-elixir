defmodule Shiphawk.Request do
  @moduledoc """
  Module responible for doing the requests to
  ShipHaw's API
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://shiphawk.com/api/v4"
  plug Tesla.Middleware.JSON

  # @api_key Application.get_env(:shiphawk, :api_key)
  @api_key "d68e33b44c0d59217e80bd8bc8d28d27"

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
      |> post(data)

    {:ok, response.body}
  end

  defp format_url(path) do
    path <> "?api_key="  <> @api_key
  end
end
