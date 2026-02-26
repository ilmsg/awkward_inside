defmodule AwkwardInside.Store.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :name, :string
    field :price, :decimal
    field :qty, :integer

    timestamps()
  end

  def changeset(product, attrs) do
    product
    |> cast(attrs, [:name, :price, :qty])
    |> validate_required([:name, :price, :qty])
    |> validate_length(:name, max: 45)
  end
end
