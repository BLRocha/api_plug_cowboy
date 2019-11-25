defmodule App.Route do
  use Plug.Router

  plug :match
  plug :dispatch

  match _, do: send_resp(conn, 404, Poison.encode!(
    %{
      message: "path not found :("
    }
  ))
end