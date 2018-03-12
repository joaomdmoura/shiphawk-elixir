defmodule Shiphawk.Mixfile do
  use Mix.Project

  def project do
    [
      app: :shiphawk,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      package: package(),
      description: description(),
      source_url: "https://github.com/joaomdmoura/shiphawk-elixir",
      deps: deps(),
      test_coverage: [tool: ExCoveralls]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:tesla, "~> 0.10.0"},
      {:poison, ">= 1.0.0"},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:excoveralls, "~> 0.7", only: :test}
    ]
  end

  defp description() do
    "Abstraction of Shiphawk API to Elixir applications.
    It comes with a nice and clean DSL that easily enable projects
    to integrate with ShipHawk."
  end

  defp package() do
    [
      maintainers: ["João M. D. Moura"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/joaomdmoura/shiphawk-elixir"}
    ]
  end
end
