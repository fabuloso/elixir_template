defmodule ElixirTemplateWeb.PageController do
  use ElixirTemplateWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
