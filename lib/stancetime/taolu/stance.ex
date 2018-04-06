defmodule Stancetime.Taolu.Stance do
  use Ecto.Schema
  import Ecto.Changeset


  schema "stances" do
    field :description, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(stance, attrs) do
    stance
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
  end
end
