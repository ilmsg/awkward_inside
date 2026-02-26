defmodule AwkwardInside.Store.Order do
  use Ecto.Schema
  import Ecto.Changeset

  schema "orders" do
    field :address, :string
    field :price, :decimal

    belongs_to :user, AwkwardInside.Store.User
    belongs_to :order_status, AwkwardInside.Store.OrderStatus, foreign_key: :status, references: :status, type: :string
    has_many :order_items, AwkwardInside.Store.OrderItem

    timestamps()
  end

  def changeset(order, attrs) do
    order
    |> cast(attrs, [:address, :price, :user_id, :status])
    |> validate_required([:address, :price, :user_id, :status])
    |> validate_length(:address, max: 45)
  end
end
