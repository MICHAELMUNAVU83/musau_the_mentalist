defmodule MusauTheMentalist.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :name, :string
    field :description, :string
    field :images, :string
    field :price, :string

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:name, :description, :images, :price])
    |> validate_required([:name, :description, :images, :price])
  end
end
