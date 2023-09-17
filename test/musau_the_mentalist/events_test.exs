defmodule MusauTheMentalist.EventsTest do
  use MusauTheMentalist.DataCase

  alias MusauTheMentalist.Events

  describe "events" do
    alias MusauTheMentalist.Events.Event

    import MusauTheMentalist.EventsFixtures

    @invalid_attrs %{
      date: nil,
      description: nil,
      title: nil,
      image: nil,
      time_of_starting: nil,
      time_of_ending: nil
    }

    test "list_events/0 returns all events" do
      event = event_fixture()
      assert Events.list_events() == [event]
    end

    test "get_event!/1 returns the event with given id" do
      event = event_fixture()
      assert Events.get_event!(event.id) == event
    end

    test "create_event/1 with valid data creates a event" do
      valid_attrs = %{
        date: "some date",
        description: "some description",
        title: "some title",
        image: "some image",
        time_of_starting: "some time_of_starting",
        time_of_ending: "some time_of_ending"
      }

      assert {:ok, %Event{} = event} = Events.create_event(valid_attrs)
      assert event.date == "some date"
      assert event.description == "some description"
      assert event.title == "some title"
      assert event.image == "some image"
      assert event.time_of_starting == "some time_of_starting"
      assert event.time_of_ending == "some time_of_ending"
    end

    test "create_event/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Events.create_event(@invalid_attrs)
    end

    test "update_event/2 with valid data updates the event" do
      event = event_fixture()

      update_attrs = %{
        date: "some updated date",
        description: "some updated description",
        title: "some updated title",
        image: "some updated image",
        time_of_starting: "some updated time_of_starting",
        time_of_ending: "some updated time_of_ending"
      }

      assert {:ok, %Event{} = event} = Events.update_event(event, update_attrs)
      assert event.date == "some updated date"
      assert event.description == "some updated description"
      assert event.title == "some updated title"
      assert event.image == "some updated image"
      assert event.time_of_starting == "some updated time_of_starting"
      assert event.time_of_ending == "some updated time_of_ending"
    end

    test "update_event/2 with invalid data returns error changeset" do
      event = event_fixture()
      assert {:error, %Ecto.Changeset{}} = Events.update_event(event, @invalid_attrs)
      assert event == Events.get_event!(event.id)
    end

    test "delete_event/1 deletes the event" do
      event = event_fixture()
      assert {:ok, %Event{}} = Events.delete_event(event)
      assert_raise Ecto.NoResultsError, fn -> Events.get_event!(event.id) end
    end

    test "change_event/1 returns a event changeset" do
      event = event_fixture()
      assert %Ecto.Changeset{} = Events.change_event(event)
    end
  end
end
