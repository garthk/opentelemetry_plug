defmodule OpentelemetryPlug.MixProject do
  use Mix.Project

  def project do
    [
      app: :opentelemetry_plug,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
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
      {:plug, "~> 1.10"},
      {:opentelemetry_api, "~> 0.3"},
      {:opentelemetry, "~> 0.3"},
      {:telemetry, "~> 0.4"}
    ]
  end
end
