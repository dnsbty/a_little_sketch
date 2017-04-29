# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :a_little_sketch,
  ecto_repos: [ALittleSketch.Repo]

# Configures the endpoint
config :a_little_sketch, ALittleSketch.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "re2qROiHPl2K2LAyk83NE2Bv1xre9O8xa0aowXRBI6D58PFLS8U9fBJ1YXvS7l8E",
  render_errors: [view: ALittleSketch.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ALittleSketch.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configures BugSnag for error tracking
config :bugsnag,
  release_stage: Mix.env,
  use_logger: true

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
