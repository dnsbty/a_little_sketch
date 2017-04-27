defmodule ALittleSketch.Web.PageController do
  use ALittleSketch.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
