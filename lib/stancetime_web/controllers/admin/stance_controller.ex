defmodule StancetimeWeb.Admin.StanceController do
  use StancetimeWeb, :controller

  alias Stancetime.Admin.Stances
  alias Stancetime.Taolu.Stance

  action_fallback StancetimeWeb.FallbackController

  def index(conn, _params) do
    stances = Stances.list_stances()
    render(conn, "index.html", stances: stances)
  end

  def new(conn, _params) do
    changeset = Stances.change_stance(%Stance{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"stance" => stance_params}) do
    case Stances.create_stance(stance_params) do
      {:ok, stance} ->
        conn
        |> put_flash(:info, "Stance created successfully.")
        |> redirect(to: admin_stance_path(conn, :show, stance))
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    stance = Stances.get_stance!(id)
    render(conn, "show.html", stance: stance)
  end

  def edit(conn, %{"id" => id}) do
    stance = Stances.get_stance!(id)
    changeset = Stances.change_stance(stance)
    render(conn, "edit.html", stance: stance, changeset: changeset)
  end

  def update(conn, %{"id" => id, "stance" => stance_params}) do
    stance = Stances.get_stance!(id)

    case Stances.update_stance(stance, stance_params) do
      {:ok, stance} ->
        conn
        |> put_flash(:info, "Stance updated successfully.")
        |> redirect(to: admin_stance_path(conn, :show, stance))
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", stance: stance, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    stance = Stances.get_stance!(id)
    {:ok, _stance} = Stances.delete_stance(stance)

    conn
    |> put_flash(:info, "Stance deleted successfully.")
    |> redirect(to: admin_stance_path(conn, :index))
  end
end
