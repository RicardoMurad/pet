defmodule Pet.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :name, :string
    field :required_password, :string
    field :required_phone_number, :string
    field :uinque_email, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :uinque_email, :required_password, :required_phone_number])
    |> validate_required([:name, :uinque_email, :required_password, :required_phone_number])
  end
end
