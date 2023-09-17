defmodule MusauTheMentalistWeb.PageController do
  use MusauTheMentalistWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
