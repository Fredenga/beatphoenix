defmodule BeatphoenixWeb.Landing.LandingComponents do
  use Phoenix.Component

  def links do
    ["HOME", "BIO", "PORTFOLIO", "HISTORY", "AIRBYTE FOUNDATION"]
  end
  def navbar(assigns) do
    assigns = assign(assigns, :links, links())
    ~H"""
      <nav class="fixed top-0 w-full h-24 z-10 bg-gray-100  flex items-center justify-between md:px-36">
      <div id="left-nav" class="">
        <img
          src="/images/logo.jpg"
          alt="logo"
          class="h-12 w-12 cursor-pointer"
        />
      </div>
      <div id="middle-nav" class="">
        <ul class="flex">
        <%= for link <- @links do %>
          <li class="mr-10 hover:text-gray-500 transition-all duration-300 ease-in cursor-pointer hover:text-xl font-bold">
              <a href="/"><%= link %></a>
            </li>
        <% end %>
        </ul>
      </div>
      <div id="right-nav" class="">
        <button class="bg-black text-white rounded-xl px-6 py-2 cursor-pointer transition-all duration-300 ease-in-out transform hover:scale-120 hover:bg-gray-500">
          Explore Events
        </button>
      </div>
    </nav>
    """
  end
end
