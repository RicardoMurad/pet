defmodule Pet.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :uinque_email, :string
      add :required_password, :string
      add :required_phone_number, :string

      timestamps()
    end

  end
end
