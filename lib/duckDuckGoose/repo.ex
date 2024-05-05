defmodule DuckDuckGoose.Repo do
  use Ecto.Repo,
    otp_app: :duckDuckGoose,
    adapter: Ecto.Adapters.SQLite3
end
