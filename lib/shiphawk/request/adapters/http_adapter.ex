defmodule Shiphawk.Request.Adapters.HTTP do
  @moduledoc false

  use Tesla
  plug Tesla.Middleware.BaseUrl, "https://shiphawk.com/api/v4"
  plug Tesla.Middleware.JSON
end
