defmodule PhoenixHelloWorldWeb.HelloController do
  use PhoenixHelloWorldWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger, "upcase" => upcase}) do
    render(conn, "show.html", messenger: messenger, upcase: upcase)
  end
end
