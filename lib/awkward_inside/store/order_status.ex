defmodule AwkwardInside.Store.OrderStatus do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:status, :string, autogenerate: false}
  schema "order_statuses" do
    has_many :orders, AwkwardInside.Store.Order, foreign_key: :status
  end

  def changeset(order_status, attrs) do
    order_status
    |> cast(attrs, [:status])
    |> validate_required([:status])
    |> validate_length(:status, max: 10)
  end
end
