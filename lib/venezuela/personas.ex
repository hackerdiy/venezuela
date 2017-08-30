defmodule Venezuela.Personas do
  use Ecto.Schema

  schema "personas" do
    field :cedula, :integer
    field :nombres, :string
    field :apellidos, :string
    field :sexo, :string, size: 1
    field :nacionalidad, :string, size: 1
    field :fecha_nacimiento, :date
  end

end
