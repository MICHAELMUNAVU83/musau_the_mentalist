import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :musau_the_mentalist, MusauTheMentalist.Repo,
  username: "root",
  password: "",
  hostname: "localhost",
  database: "musau_the_mentalist_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :musau_the_mentalist, MusauTheMentalistWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "wexNtQwHusVZiQBV9XzKnISr9Oiu3Orw4qt4m7xG7ZpNLFHtkHTvNOnZUWpnAzf8",
  server: false

# In test we don't send emails.
config :musau_the_mentalist, MusauTheMentalist.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
