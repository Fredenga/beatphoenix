defmodule BeatphoenixWeb.LandingLive.Index do
  use BeatphoenixWeb, :live_view
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>hello world</h1>
    """
  end
end
