defmodule MusauTheMentalist.Repo.Migrations.CreateEvents do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :title, :string
      add :description, :string
      add :date, :string
      add :time_of_starting, :string
      add :time_of_ending, :string
      add :image, :string

      timestamps()
    end
  end
end
