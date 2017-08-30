defmodule Venezuela.Repo.Migrations.CreatePersonas do
  use Ecto.Migration

  def change do
    create table(:personas) do
      add :cedula, :integer
      add :nombres, :string
      add :apellidos, :string
      add :sexo, :string, size: 1
      add :nacionalidad, :string, size: 1
      add :fecha_nacimiento, :date
    end
    create index("personas", [:cedula], unique: true)
  end
end
