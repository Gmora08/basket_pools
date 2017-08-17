defmodule BasketPoolsWeb.PageController do
  use BasketPoolsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
