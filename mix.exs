defmodule Dpos.MixProject do
  use Mix.Project

  @desc "DPoS offline tools for Elixir"
  @version "0.1.0"
  @url "https://github.com/sgessa/dpos-ex"
  @maintainers ["Stefano Gessa"]

  def project do
    [
      app: :dpos,
      version: @version,
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Hex
      package: package(),
      description: @desc,

      # Docs
      name: "DPoS",
      docs: docs()
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.16", only: :dev, runtime: false},
      {:salty, "~> 0.1.3", hex: :libsalty}
    ]
  end

  def docs do
    [
      main: "readme",
      source_ref: "v#{@version}",
      source_url: @url,
      extras: ["README.md"]
    ]
  end

  defp package do
    [
      maintainers: @maintainers,
      licenses: ["MIT"],
      links: %{"GitHub" => @url}
    ]
  end
end
