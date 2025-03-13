defmodule Beatphoenix.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      BeatphoenixWeb.Telemetry,
      Beatphoenix.Repo,
      {DNSCluster, query: Application.get_env(:beatphoenix, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Beatphoenix.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Beatphoenix.Finch},
      # Start a worker by calling: Beatphoenix.Worker.start_link(arg)
      # {Beatphoenix.Worker, arg},
      # Start to serve requests, typically the last entry
      BeatphoenixWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Beatphoenix.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    BeatphoenixWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
