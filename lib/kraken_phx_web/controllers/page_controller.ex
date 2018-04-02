defmodule KrakenPhxWeb.PageController do
  use KrakenPhxWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
