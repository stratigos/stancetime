defmodule Stancetime.Admin.Stances do
  @moduledoc """
  The Taolu context.
  """

  import Ecto.Query, warn: false
  alias Stancetime.Repo

  alias Stancetime.Taolu.Stance

  @doc """
  Returns the list of stances.

  ## Examples

      iex> list_stances()
      [%Stance{}, ...]

  """
  def list_stances do
    Repo.all(Stance)
  end

  @doc """
  Gets a single stance.

  Raises `Ecto.NoResultsError` if the Stance does not exist.

  ## Examples

      iex> get_stance!(123)
      %Stance{}

      iex> get_stance!(456)
      ** (Ecto.NoResultsError)

  """
  def get_stance!(id), do: Repo.get!(Stance, id)

  @doc """
  Creates a stance.

  ## Examples

      iex> create_stance(%{field: value})
      {:ok, %Stance{}}

      iex> create_stance(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_stance(attrs \\ %{}) do
    %Stance{}
    |> Stance.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a stance.

  ## Examples

      iex> update_stance(stance, %{field: new_value})
      {:ok, %Stance{}}

      iex> update_stance(stance, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_stance(%Stance{} = stance, attrs) do
    stance
    |> Stance.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Stance.

  ## Examples

      iex> delete_stance(stance)
      {:ok, %Stance{}}

      iex> delete_stance(stance)
      {:error, %Ecto.Changeset{}}

  """
  def delete_stance(%Stance{} = stance) do
    Repo.delete(stance)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking stance changes.

  ## Examples

      iex> change_stance(stance)
      %Ecto.Changeset{source: %Stance{}}

  """
  def change_stance(%Stance{} = stance) do
    Stance.changeset(stance, %{})
  end
end
