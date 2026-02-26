defmodule AwkwardInside.Store.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :username, :string
    has_one :cart, AwkwardInside.Store.Cart
    has_many :orders, AwkwardInside.Store.Order

    timestamps()
  end

  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username])
    |> validate_required([:username])
    |> validate_length(:username, max: 45)
  end
end
