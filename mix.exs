defmodule Utsusemi.Mixfile do
  use Mix.Project

  def project do
    [
      app: :utsusemi,
      version: "0.0.1",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      dialyzer: [
        ignore_warnings: "dialyzer.ignore-warnings",
        plt_core_path: "_dialyzer",
      ],
      test_coverage: [tool: ExCoveralls],
      deps: deps()
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
      {:excoveralls, "~> 0.7.0", only: :test}
    ]
  end
end
