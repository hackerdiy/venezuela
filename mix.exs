defmodule Venezuela.Mixfile do
  use Mix.Project

  def project do
    [
      app: :venezuela,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      name: "Venezuela",
      description: description(),
      package: package(),
      source_url: "https://github.com/hackerdiy/venezuela",
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :postgrex, :ecto],
      mod: {Venezuela.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, "~> 2.2"},
      {:postgrex, "~> 0.13.3"},
      {:csv, "~> 2.0"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    "Aplicación para obtener identificación de personas con cédula venezolana."
  end

  defp package do
    [
      name: "venezuela",
      maintainers: ["Mijail Rondon"],
      files: ["lib", "priv", "mix.exs", "README.*", "LICENSE"],
      licenses: ["GPL v3"],
      links: %{"GitHub" => "https://github.com/hackerdiy/venezuela"},
    ]
  end
end
