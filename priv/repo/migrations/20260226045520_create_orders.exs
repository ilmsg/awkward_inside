defmodule AwkwardInside.Repo.Migrations.CreateOrders do
  use Ecto.Migration

  def change do
    create table :orders do
      add :address, :string, size: 45
      add :price, :decimal, precision: 10, scale: 2
      add :user_id, references(:users, on_delete: :nothing)
      add :status, references(:order_statuses, column: :status, type: :string, on_delete: :nothing)

      timestamps()
    end

    create index(:orders, [:user_id])
    create index(:orders, [:status])
  end
end
