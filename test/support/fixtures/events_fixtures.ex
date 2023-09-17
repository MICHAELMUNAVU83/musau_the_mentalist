defmodule MusauTheMentalist.EventsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `MusauTheMentalist.Events` context.
  """

  @doc """
  Generate a event.
  """
  def event_fixture(attrs \\ %{}) do
    {:ok, event} =
      attrs
      |> Enum.into(%{
        date: "some date",
        description: "some description",
        title: "some title",
        image: "some image",
        time_of_starting: "some time_of_starting",
        time_of_ending: "some time_of_ending"
      })
      |> MusauTheMentalist.Events.create_event()

    event
  end
end
