defmodule PhoenixLearningWeb.PageController do
  use PhoenixLearningWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "Alice", email: "alice@email.com"},
      %{id: 1, name: "Bob", email: "Bob@email.com"}

    ]

    json(conn, %{users: users})
    render(conn, :users, users: users, layout: false)

  end
end
