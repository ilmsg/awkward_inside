defmodule AwkwardInside.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table :products do
      add :name, :string, size: 45
      add :price, :decimal, precision: 10, scale: 2
      add :qty, :integer

      timestamps()
    end
  end
end
