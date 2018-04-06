defmodule Stancetime.Taolu do
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

end
