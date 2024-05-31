defmodule DuckDuckGooseWeb.HealthCheckController do
  use DuckDuckGooseWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> json(%{message: "Server is up and running!"})
  end
end
