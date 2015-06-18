defmodule UnidenScannerController.Mixfile do
  use Mix.Project

  def project do
    [
      app: :uniden_scanner_controller,
      version: "0.1.0",
      deps: deps
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      # {:serial, git: "https://github.com/tonyg/erlang-serial.git"}
      # {:serial, git: "https://github.com/tomszilagyi/gen_serial"}
      {:srly, git: "https://github.com/msantos/srly"}
      # {:czmq, git: "https://github.com/gar1t/erlang-czmq"}
    ]
  end
end
