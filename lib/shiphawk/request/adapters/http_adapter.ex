defmodule Shiphawk.Request.Adapters.HTTP do
  use Tesla
  plug Tesla.Middleware.BaseUrl, "https://shiphawk.com/api/v4"
  plug Tesla.Middleware.JSON
end