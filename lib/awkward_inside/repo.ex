defmodule AwkwardInside.Repo do
  use Ecto.Repo,
    otp_app: :awkward_inside,
    adapter: Ecto.Adapters.Postgres
end
