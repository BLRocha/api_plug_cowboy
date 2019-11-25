use Mix.Config

config :app, App.Repo,
  username: "elixir",
  password: "elixir_login",
  database: "elixir_db",
  hostname: "localhost",
  port: 3306

config :app, ecto_repos: [App.Repo]