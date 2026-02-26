defmodule AwkwardInside.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table :users do
      add :username, :string, size: 45

      timestamps()
    end
  end
end
