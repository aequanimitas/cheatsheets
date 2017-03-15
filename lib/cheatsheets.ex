defmodule Cheatsheets do
  @moduledoc """
  Documentation for Cheatsheets.
  """
  import Plug.Conn

  def init(opts) do
    opts
  end

  def call(conn, _opts) do
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, cont)
  end

  def cont do
    # get all headers for now
    File.stream!("cheatsheets.md") 
    |> Stream.filter(fn x -> String.starts_with?(x, "#") end)
    |> Stream.map(fn x -> String.split(x, " ") end)
    |> Stream.map(fn [h | t] -> [h | [Enum.join(t)]] end)
    |> Stream.map(fn [h | t] -> [String.split(h, "", trim: true) | t] end)
    |> Stream.map(fn [h | t] -> "<h#{length(h)}>#{Enum.join(t)}</h#{length(h)}>" end)
    |> Enum.join()
  end
end
