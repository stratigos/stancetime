defmodule Stancetime.Repo.Migrations.CreateStances do
  use Ecto.Migration

  def change do
    create table(:stances) do
      add :name, :string
      add :description, :text

      timestamps()
    end

  end
end
