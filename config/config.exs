# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :test_json_array,
  ecto_repos: [TestJsonArray.Repo]

# Configures the endpoint
config :test_json_array, TestJsonArray.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5zxEQUt8hROhSvFHuMOKi4ievqNJZ5DVbJpmkmQ4uSeidrC67e44dxQzxrQa0yJ4",
  render_errors: [view: TestJsonArray.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TestJsonArray.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
