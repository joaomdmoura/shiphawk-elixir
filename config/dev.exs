use Mix.Config

config :shiphawk,
  adapter: Shiphawk.Request.Adapters.HTTP,
  api_key:  System.get_env("SHIPHAWKKEY")
