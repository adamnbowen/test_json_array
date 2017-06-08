defmodule TestJsonArray.PageControllerTest do
  use TestJsonArray.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
  
  test "should let you submit a single thing", %{conn: conn} do
    conn = post conn, page_path(conn, :create), %{what: "up"}
    assert json_response(conn, 200)
  end
  
  test "should let you submit multiple things", %{conn: conn} do
    conn = post conn, page_path(conn, :create), [%{what: "up"},%{not: "much"}]
    assert json_response(conn, 200)
  end
end
