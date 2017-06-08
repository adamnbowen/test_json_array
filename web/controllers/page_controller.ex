defmodule TestJsonArray.PageController do
  use TestJsonArray.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
  
  def create(conn, params) do
    conn
    |> render("show.json", %{})
  end
end
