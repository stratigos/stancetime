# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :stancetime,
  ecto_repos: [Stancetime.Repo]

# Configures the endpoint
config :stancetime, StancetimeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4KvlpWOKrqcKcEx2Ph3pGaM0H6A6SP0JbYMOJ4W0YKQAdQWfXs19+zLJq3gGmIJ4",
  render_errors: [view: StancetimeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Stancetime.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
