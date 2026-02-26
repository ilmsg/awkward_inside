defmodule AwkwardInside.Store.OrderItem do
  use Ecto.Schema
  import Ecto.Changeset

  schema "order_items" do
    field :price, :decimal
    field :qty, :integer

    belongs_to :order, AwkwardInside.Store.Order
    belongs_to :product, AwkwardInside.Store.Product

    timestamps()
  end

  def changeset(order_item, attrs) do
    order_item
    |> cast(attrs, [:price, :qty, :order_id, :product_id])
    |> validate_required([:price, :qty, :order_id, :product_id])
  end
end
