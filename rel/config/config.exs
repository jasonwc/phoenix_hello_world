use Mix.Config

port = System.get_env("PORT") |> String.to_integer()
config :phoenix_hello_world, PhoenixHelloWorldWeb.Endpoint,
  http: [port: port],
  url: [host: System.get_env("HOST"), port: port],
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# Configure your database
db_port = System.get_env("DB_PORT") |> String.to_integer()
config :phoenix_hello_world, PhoenixHelloWorld.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  hostname:   System.get_env("DB_HOST"),
  port:   db_port,
  username:   System.get_env("DB_USERNAME"),
  password:   System.get_env("DB_PASSWORD"),
  database:   System.get_env("DB_NAME"),
  pool_size: 20,
  show_sensitive_data_on_connection_error: true
