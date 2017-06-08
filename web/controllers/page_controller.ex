defmodule TestJsonArray.PageController do
  use TestJsonArray.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
