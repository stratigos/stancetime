defmodule Stancetime.TaoluTest do
  use Stancetime.DataCase

  alias Stancetime.Taolu

  describe "stances" do
    alias Stancetime.Taolu.Stance

    @valid_attrs %{description: "some description", name: "some name"}
    @update_attrs %{description: "some updated description", name: "some updated name"}
    @invalid_attrs %{description: nil, name: nil}

    def stance_fixture(attrs \\ %{}) do
      {:ok, stance} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Taolu.create_stance()

      stance
    end

    test "list_stances/0 returns all stances" do
      stance = stance_fixture()
      assert Taolu.list_stances() == [stance]
    end

    test "get_stance!/1 returns the stance with given id" do
      stance = stance_fixture()
      assert Taolu.get_stance!(stance.id) == stance
    end

    test "create_stance/1 with valid data creates a stance" do
      assert {:ok, %Stance{} = stance} = Taolu.create_stance(@valid_attrs)
      assert stance.description == "some description"
      assert stance.name == "some name"
    end

    test "create_stance/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Taolu.create_stance(@invalid_attrs)
    end

    test "update_stance/2 with valid data updates the stance" do
      stance = stance_fixture()
      assert {:ok, stance} = Taolu.update_stance(stance, @update_attrs)
      assert %Stance{} = stance
      assert stance.description == "some updated description"
      assert stance.name == "some updated name"
    end

    test "update_stance/2 with invalid data returns error changeset" do
      stance = stance_fixture()
      assert {:error, %Ecto.Changeset{}} = Taolu.update_stance(stance, @invalid_attrs)
      assert stance == Taolu.get_stance!(stance.id)
    end

    test "delete_stance/1 deletes the stance" do
      stance = stance_fixture()
      assert {:ok, %Stance{}} = Taolu.delete_stance(stance)
      assert_raise Ecto.NoResultsError, fn -> Taolu.get_stance!(stance.id) end
    end

    test "change_stance/1 returns a stance changeset" do
      stance = stance_fixture()
      assert %Ecto.Changeset{} = Taolu.change_stance(stance)
    end
  end
end
