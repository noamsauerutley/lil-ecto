defmodule Friends.Repo.Migrations.CreatePuppies do
  use Ecto.Migration

  def change do
    create table(:puppies) do
      add(:name, :string)
      add(:breed, :string)
    end
  end
end
