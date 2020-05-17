defmodule Friends.Puppy do
  use Ecto.Schema

  schema "puppies" do
    field(:name, :string)
    field(:breed, :string)
  end

  def changeset(puppy, params \\ %{}) do
    puppy
    |> Ecto.Changeset.cast(params, [:name, :breed])
    |> Ecto.Changeset.validate_required([:name])
  end
end
