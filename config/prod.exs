use Mix.Config

config :phoenix_hello_world, PhoenixHelloWorldWeb.Endpoint,
  cache_static_manifest: "priv/static/manifest.json",
  server: true,
  root: "."

config :logger, level: :debug
