defmodule StancetimeWeb.StanceControllerTest do
  use StancetimeWeb.ConnCase

  alias Stancetime.Taolu
  alias Stancetime.Taolu.Stance

  @create_attrs %{description: "some description", name: "some name"}
  @update_attrs %{description: "some updated description", name: "some updated name"}
  @invalid_attrs %{description: nil, name: nil}

  def fixture(:stance) do
    {:ok, stance} = Taolu.create_stance(@create_attrs)
    stance
  end

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all stances", %{conn: conn} do
      conn = get conn, stance_path(conn, :index)
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create stance" do
    test "renders stance when data is valid", %{conn: conn} do
      conn = post conn, stance_path(conn, :create), stance: @create_attrs
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get conn, stance_path(conn, :show, id)
      assert json_response(conn, 200)["data"] == %{
        "id" => id,
        "description" => "some description",
        "name" => "some name"}
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post conn, stance_path(conn, :create), stance: @invalid_attrs
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update stance" do
    setup [:create_stance]

    test "renders stance when data is valid", %{conn: conn, stance: %Stance{id: id} = stance} do
      conn = put conn, stance_path(conn, :update, stance), stance: @update_attrs
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get conn, stance_path(conn, :show, id)
      assert json_response(conn, 200)["data"] == %{
        "id" => id,
        "description" => "some updated description",
        "name" => "some updated name"}
    end

    test "renders errors when data is invalid", %{conn: conn, stance: stance} do
      conn = put conn, stance_path(conn, :update, stance), stance: @invalid_attrs
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete stance" do
    setup [:create_stance]

    test "deletes chosen stance", %{conn: conn, stance: stance} do
      conn = delete conn, stance_path(conn, :delete, stance)
      assert response(conn, 204)
      assert_error_sent 404, fn ->
        get conn, stance_path(conn, :show, stance)
      end
    end
  end

  defp create_stance(_) do
    stance = fixture(:stance)
    {:ok, stance: stance}
  end
end
