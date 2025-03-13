defmodule BeatphoenixWeb.LandingLive.Index do
  use BeatphoenixWeb, :live_view
  import BeatphoenixWeb.Landing.LandingComponents


  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <.navbar/>
    <.hero/>
    """
  end
end
