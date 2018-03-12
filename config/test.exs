use Mix.Config

config :shiphawk,
  adapter: Shiphawk.Request.Adapters.Test,
  api_key:  System.get_env("SHIPHAWKKEY")
