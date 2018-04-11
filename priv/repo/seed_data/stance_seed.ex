defmodule Stancetime.SeedData.StanceSeed do

  alias Stancetime.Taolu.Stance
  alias Stancetime.Repo

  # "Ready", "Horse", and "Battle" Stance records should be initialized with
  #  the application, in any environment.
  def insert_required_stances do
    Enum.each(list_required_stances(), fn(stance) -> Repo.insert!(stance) end)
  end

  defp list_required_stances do
    [
      %Stance{name: "Ready", description: "Baseline stance from which all training begins and returns."},
      %Stance{name: "Horse", description: "Fundamental stance to ground, strengthen, and stabilize the lower body."},
      %Stance{name: "Battle", description: "Core stance for training movement and striking power."}
    ]
  end

end
