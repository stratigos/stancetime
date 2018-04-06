defmodule StancetimeWeb.Api.V1.StanceController do
  use StancetimeWeb, :controller

  alias Stancetime.Taolu
  # alias Stancetime.Taolu.Stance # exemplary generated code.

  action_fallback StancetimeWeb.FallbackController

  def index(conn, _params) do
    stances = Taolu.list_stances()
    render(conn, "index.json", stances: stances)
  end

  def show(conn, %{"id" => id}) do
    stance = Taolu.get_stance!(id)
    render(conn, "show.json", stance: stance)
  end

  # Not accessable via route, but leaving this codeblock here for exemplary
  #  purposes, as it was produced by the `mix phx.gen.json` result.
  # def create(conn, %{"stance" => stance_params}) do
  #   with {:ok, %Stance{} = stance} <- Taolu.create_stance(stance_params) do
  #     conn
  #     |> put_status(:created)
  #     |> put_resp_header("location", stance_path(conn, :show, stance))
  #     |> render("show.json", stance: stance)
  #   end
  # end
  #
  # def update(conn, %{"id" => id, "stance" => stance_params}) do
  #   stance = Taolu.get_stance!(id)
  #
  #   with {:ok, %Stance{} = stance} <- Taolu.update_stance(stance, stance_params) do
  #     render(conn, "show.json", stance: stance)
  #   end
  # end
  #
  # def delete(conn, %{"id" => id}) do
  #   stance = Taolu.get_stance!(id)
  #   with {:ok, %Stance{}} <- Taolu.delete_stance(stance) do
  #     send_resp(conn, :no_content, "")
  #   end
  # end
end
