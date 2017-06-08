defmodule TestJsonArray.PageView do
  use TestJsonArray.Web, :view
  
  def render("show.json", _) do
    %{hey: "you"}
  end
end
