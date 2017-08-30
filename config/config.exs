# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :venezuela, Venezuela.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "venezuela_repo",
  username: System.get_env("VENEZUELA_DB_USER"),
  password: System.get_env("VENEZUELA_DB_PASS"),
  hostname: System.get_env("VENEZUELA_DB_HOST")

config :venezuela,
  ecto_repos: [Venezuela.Repo]
