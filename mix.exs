defmodule TypeClass.Mixfile do
  use Mix.Project

  def project do
    [
      app: :type_class_goo,
      aliases: aliases(),
      deps: deps(),
      preferred_cli_env: [espec: :test, quality: :test],

      # Versions
      version: "1.21.1",
      elixir: "~> 1.11",

      # Docs
      name: "TypeClass",
      docs: docs(),

      # Hex
      description:
        "(Semi-)principled type classes for Elixir that don't slow down compilation by dafault.",
      package: package()
    ]
  end

  defp aliases do
    [
      quality: [
        "test",
        "espec",
        "credo --strict"
      ]
    ]
  end

  defp deps do
    [
      {:exceptional, "~> 2.1"},
      {:espec, "~> 1.8", only: :test, runtime: false},
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
      {:inch_ex, "~> 2.0", only: [:dev, :docs, :test], runtime: false},
      {:dialyxir, "~> 1.1", only: :dev, runtime: false},
      {:earmark, "~> 1.4", only: :dev, runtime: false},
      {:ex_doc, "~> 0.23", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      extras: ["README.md"],
      logo: "./brand/logo.png",
      main: "readme",
      source_url: "https://github.com/witchcrafters/type_class"
    ]
  end

  defp package do
    [
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/witchcrafters/type_class"},
      maintainers: ["doma.dev"]
    ]
  end
end
