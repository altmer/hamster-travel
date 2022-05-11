defmodule HamsterTravelWeb.Planning.PlanStatus do
  @moduledoc """
  Renders status row for plan (badge, flags, author)
  """
  use HamsterTravelWeb, :component
  import PhxComponentHelpers

  import HamsterTravelWeb.Flag
  import HamsterTravelWeb.Inline
  import HamsterTravelWeb.Planning.StatusBadge

  def plan_status(assigns) do
    assigns
    |> set_attributes([flags_limit: 100], required: [:plan])
    |> render()
  end

  defp render(assigns) do
    ~H"""
    <.inline class="gap-3">
      <.status_badge status={@plan.status} />
      <%= for country <- Enum.take(@plan.countries, @flags_limit) do %>
        <.flag size={24} country={country} />
      <% end %>
      <.avatar
        size="xs"
        src={@plan.author.avatar_url}
        name={@plan.author.name}
        random_color
        class="!w-6 !h-6"
      />
    </.inline>
    """
  end
end