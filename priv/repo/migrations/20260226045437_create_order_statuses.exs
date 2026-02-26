defmodule AwkwardInside.Repo.Migrations.CreateOrderStatuses do
  use Ecto.Migration

  def change do
    create table :order_statuses, primary_key: false do
      add :status, :string, size: 10, primary_key: true
    end
  end
end
