defmodule HamsterTravelWeb.UIComponents do
  @moduledoc """
  Common phoenix components
  """
  use HamsterTravelWeb, :component

  def icon_text(assigns) do
    ~H"""
      <div class="flex flex-row gap-x-2 items-center">
        <%= render_slot(@inner_block) %>
      </div>
    """
  end

  def link(assigns) do
    ~H"""
      <%= live_redirect to: @url, class: "underline text-indigo-500 hover:text-indigo-900 dark:text-indigo-300 dark:hover:text-indigo-100" do %>
        <%= render_slot(@inner_block) %>
      <% end %>
    """
  end

  def tabs(assigns) do
    ~H"""
      <div class="flex border-b border-gray-200 dark:border-gray-700 gap-x-4">
        <%= render_slot(@inner_block) %>
      </div>
    """
  end

  def tab(%{active: active} = assigns) do
    classes =
      class_list([
        {
          "flex items-center h-10 px-2 py-2 -mb-px text-center bg-transparent",
          true
        },
        {
          "border-b-2 -px-1 whitespace-nowrap focus:outline-none",
          true
        },
        {
          "text-gray-700 border-transparent dark:text-white cursor-base hover:border-gray-400",
          !active
        },
        {"text-indigo-600 border-indigo-500 dark:border-indigo-400 dark:text-indigo-300", active}
      ])

    ~H"""
      <%= live_patch to: @url, class: classes do %>
        <%= render_slot(@inner_block) %>
      <% end %>
    """
  end
end
