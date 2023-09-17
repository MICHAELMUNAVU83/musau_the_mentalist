defmodule MusauTheMentalist.Events.Event do
  use Ecto.Schema
  import Ecto.Changeset

  schema "events" do
    field :date, :string
    field :description, :string
    field :title, :string
    field :image, :string
    field :time_of_starting, :string
    field :time_of_ending, :string

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:title, :description, :date, :time_of_starting, :time_of_ending, :image])
    |> validate_required([:title, :description, :date, :time_of_starting, :time_of_ending, :image])
  end
end
