defmodule PhoenixLearning.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_learning,
    adapter: Ecto.Adapters.SQLite3
end
