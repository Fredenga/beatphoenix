defmodule Beatphoenix.Repo do
  use Ecto.Repo,
    otp_app: :beatphoenix,
    adapter: Ecto.Adapters.Postgres
end
