defmodule StancetimeWeb.Api.V1.StanceView do
  use StancetimeWeb, :view
  alias StancetimeWeb.Api.V1.StanceView

  def render("index.json", %{stances: stances}) do
    %{data: render_many(stances, StanceView, "stance.json")}
  end

  def render("show.json", %{stance: stance}) do
    %{data: render_one(stance, StanceView, "stance.json")}
  end

  def render("stance.json", %{stance: stance}) do
    %{id: stance.id,
      name: stance.name,
      description: stance.description}
  end
end
