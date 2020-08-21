# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :fitfam_api,
  ecto_repos: [FitfamApi.Repo]

# Configures the endpoint
config :fitfam_api, FitfamApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "B1jit9K9gvShNXXMSKs4B1qHE2Nd3WVvepyrP0K86iozLDjXisuzOHHPcoXinFW7",
  render_errors: [view: FitfamApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: FitfamApi.PubSub,
  live_view: [signing_salt: "tZZAor/G"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
