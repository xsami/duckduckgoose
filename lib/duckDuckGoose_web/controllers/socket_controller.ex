defmodule DuckDuckGooseWeb.SocketController do
  use DuckDuckGooseWeb, :controller

  def start(conn, %{"nodes" => nodes}) do


    case Integer.parse(nodes) do
       { nodes_amount, "" } ->
          if nodes_amount <  2 do
            conn
            |> put_status(:bad_request)
            |> json(%{message: "Invalid nodes amount! Must be at least 2 nodes!"})
          else
            # Start the sockets

            conn
            |> put_status(:created)
            |> json(%{message: "Connection established! #{nodes_amount} nodes connected!"})
          end
      _ ->
        conn
        |> put_status(:bad_request)
        |> json(%{message: "Invalid nodes amount!"})

    end
  end

  def start(conn, _params) do
    conn
    |> put_status(:bad_request)
    |> json(%{message: "Invalid request! Must provide nodes amount!"})
  end

end
