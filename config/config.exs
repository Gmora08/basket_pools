# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :basket_pools,
  ecto_repos: [BasketPools.Repo]

# Configures the endpoint
config :basket_pools, BasketPoolsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tVrGikIb6/VP52MO3ZDLJngpFEZPBzk55G5xUTT338hmZ6JWzU5pO9iY32ImdEML",
  render_errors: [view: BasketPoolsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BasketPools.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
