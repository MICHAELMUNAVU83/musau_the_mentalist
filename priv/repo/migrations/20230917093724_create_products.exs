defmodule MusauTheMentalist.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :description, :string
      add :images, :string
      add :price, :string

      timestamps()
    end
  end
end
