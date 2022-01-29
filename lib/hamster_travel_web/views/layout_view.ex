defmodule HamsterTravelWeb.LayoutView do
  use HamsterTravelWeb, :view

  import HamsterTravelWeb.Gettext

  alias HamsterTravelWeb.{Avatar, Icons}

  # Phoenix LiveDashboard is available only in development by default,
  # so we instruct Elixir to not warn if the dashboard route is missing.
  @compile {:no_warn_undefined, {Routes, :live_dashboard_path, 2}}

  def navbar(assigns) do
    ~H"""
      <div class="mx-auto px-6 max-w-screen-md xl:max-w-screen-lg 2xl:max-w-screen-xl h-20 flex items-center justify-between">
        <%= live_redirect to: "/" do %>
          <h1 class="font-medium dark:text-white">
            Hamster Travel
          </h1>
        <% end %>
        <nav class="space-x-6 flex items-center">
          <div class="hidden sm:block">
            <div class="space-x-6 flex items-center">
              <.nav_link to="/plans" active={@active_nav == :plans}>
                <%= gettext("Plans") %>
              </.nav_link>
              <.nav_link to="/drafts" active={@active_nav == :drafts}>
                <%= gettext("Drafts") %>
              </.nav_link>
              <.nav_link to="/backpacks" active={@active_nav == :backpacks}>
                <%= gettext("Backpacks") %>
              </.nav_link>
            </div>
          </div>
          <%= if @current_user do %>
            <Avatar.round user={@current_user} />
          <% end %>
        </nav>
      </div>
      <div class="sm:hidden">
        <nav class="w-full border-t bg-orange-50 dark:bg-zinc-900 dark:border-zinc-800 fixed bottom-0">
          <div class="mx-auto px-6 max-w-md h-16 flex items-center justify-around">
            <.mobile_nav_link label={gettext("Homepage")} to="/" active={@active_nav == :home}>
              <Icons.home />
            </.mobile_nav_link>
            <.mobile_nav_link label={gettext("Plans")} to="/plans" active={@active_nav == :plans}>
              <Icons.book />
            </.mobile_nav_link>
            <.mobile_nav_link label={gettext("Drafts")} to="/drafts" active={@active_nav == :drafts}>
              <Icons.note />
            </.mobile_nav_link>
            <.mobile_nav_link label={gettext("Backpacks")} to="/backpacks" active={@active_nav == :backpacks}>
              <Icons.backpack />
            </.mobile_nav_link>
          </div>
        </nav>
      </div>
    """
  end

  def nav_link(assigns) do
    color = color_classes(assigns)

    ~H"""
      <%= live_redirect to: @to, class: "text-sm #{color}" do %>
        <%= render_slot(@inner_block) %>
      <% end %>
    """
  end

  def mobile_nav_link(assigns) do
    color = color_classes(assigns)

    ~H"""
      <%= live_redirect to: @to,
        class: "space-y-1 w-full h-full flex flex-col items-center justify-center #{color}" do %>
        <%= render_slot(@inner_block) %>
        <span class="text-xs text-zinc-600 dark:text-zinc-400"><%= @label %></span>
      <% end %>
    """
  end

  def color_classes(%{active: true}), do: active_class()
  def color_classes(_), do: inactive_class()

  def active_class, do: "text-indigo-500 dark:text-indigo-400"

  def inactive_class,
    do: "text-zinc-600 hover:text-zinc-900 dark:text-zinc-400 dark:hover:text-zinc-50"
end
