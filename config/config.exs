# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :kraken_phx,
  ecto_repos: [KrakenPhx.Repo]

# Configures the endpoint
config :kraken_phx, KrakenPhxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kU57+1wP/lv11BJN58QC/901t08pd5LaeBFtqBS4HHk6tMg2+ZeboeZ1f6ivxILh",
  render_errors: [view: KrakenPhxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: KrakenPhx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
