import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :elixir_pobeda, ElixirPobedaWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "q58X3Cjdcsv62hUhxIQCQMn0Em4Jk2Cn5J5oIkK/FXwe9I9QuAsdh2swwN1W4o74",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# Enable helpful, but potentially expensive runtime checks
config :phoenix_live_view,
  enable_expensive_runtime_checks: true
