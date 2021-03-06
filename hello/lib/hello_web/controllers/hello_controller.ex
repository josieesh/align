# controllers are elixir modules, and actions are elixir functions defined in them
defmodule HelloWeb.HelloController do
    use HelloWeb, :controller

    def index(conn, _params) do
        render(conn, "index.html")
    end

    def show(conn, %{"messenger" => messenger}) do
        render(conn, "show.html", messenger: messenger)
    end

    def processEntry(conn, %{"id" => id}) do
        render(conn, "process.html", conn.body())
    end
end