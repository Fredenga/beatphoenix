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
  def picture(assigns) do
    ~H"""
    <div class="w-full relative">
      <img src="/images/hero.jpg" class="h-full w-full" alt="hero" />
      <h1 class="text-white xs:text-2xl text-4xl md:text-7xl font-bold absolute top-[calc(25%+16.67%)] left-1/4 -translate-y-1/2">
        Unforgettable <br>
         Experiences, <br> Beautifully Delivered{" "}
        <br>
        Across Africa
      </h1>
      <p class="hidden xl:block absolute bottom-[calc(10%+16.67%)] text-white left-1/4 text-xl">
        At Airbeat, we are dedicated to delivering exceptional entertainment
        <br>
        experiences that leave lasting memories. Join us as we celebrate the
        <br>
        vibrant culture and artistry of Africa through our stunning events.
        <br>
      </p>
    </div>
    """
  end

  def hero(assigns) do
    ~H"""
    <section class="md:px-36 pt-5 relative mt-24">
      <.picture />
      <button
        class="absolute left-[calc(28%+16.67%)] bottom-[-28px]
       border-2 border-gray-300 px-10 py-4 text-white bg-black
       rounded-lg mx-auto cursor-pointer transition-all duration-300 ease-in-out transform hover:scale-120
      hover:bg-white hover:text-black hover:font-bold"
      >
        Explore Events
      </button>
    </section>
    """
  end


end
