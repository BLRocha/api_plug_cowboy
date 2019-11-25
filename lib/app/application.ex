defmodule App.Application do
  use Application

  require Logger

  def start(_type, _args) do
    children = [
      {
        Plug.Cowboy,
        scheme: :http,
        plug: App.Endpoint,
        options: [port: 4000]
      },
      App.Repo
    ]

    opts = [strategy: :one_for_one, name: App.Supervisor]
    Logger.info("App is up Port 4000")
    Supervisor.start_link(children, opts)
  end
end