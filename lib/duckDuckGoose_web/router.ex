defmodule DuckDuckGooseWeb.Router do
  use DuckDuckGooseWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", DuckDuckGooseWeb do
    pipe_through :api
  end
end
