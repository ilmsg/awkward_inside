defmodule AwkwardInside.Store.CartItem do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cart_items" do
    field :qty, :integer

    belongs_to :cart, AwkwardInside.Store.Cart
    belongs_to :product, AwkwardInside.Store.Product

    timestamps()
  end

  def changeset(cart_item, attrs) do
    cart_item
    |> cast(attrs, [:qty, :cart_id, :product_id])
    |> validate_required([:qty, :cart_id, :product_id])
  end
end
