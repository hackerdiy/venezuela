defmodule Venezuela do
  @moduledoc """
  Obtener informacion de una persona Venezolana.
  """

  @doc """
  Obtener detalles de persona buscando por número de cédula.

  ## Ejemplo:

      iex> Venezuela.persona(19422852)
      %{apellidos: "Rondon Viloria", cedula: 19422852,
       fecha_nacimiento: ~D[1988-04-06], id: 19422376, nacionalidad: "V",
       nombres: "Mijail", sexo: "M"}

  """
  alias Venezuela.{Repo, Personas}

  def persona(cedula) do
    Repo.get_by!(Personas, cedula: cedula)
    |> Map.from_struct
    |> Map.delete(:__meta__)
  end
end
