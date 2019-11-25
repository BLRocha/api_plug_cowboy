defmodule App.Endpoint do
  @moduledoc false

  use Plug.Builder

  plug Plug.RequestId
  plug Plug.MethodOverride
  plug Plug.Head
  plug Plug.Logger

  plug Plug.Parsers, parsers: [:json, :urlencoded], pass: ["*/*"], json_decoder: Poison

  plug App.Route
end