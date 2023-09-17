defmodule MusauTheMentalist.ProductsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `MusauTheMentalist.Products` context.
  """

  @doc """
  Generate a product.
  """
  def product_fixture(attrs \\ %{}) do
    {:ok, product} =
      attrs
      |> Enum.into(%{
        name: "some name",
        description: "some description",
        images: "some images",
        price: "some price"
      })
      |> MusauTheMentalist.Products.create_product()

    product
  end
end
