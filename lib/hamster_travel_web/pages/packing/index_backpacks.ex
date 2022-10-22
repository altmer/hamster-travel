defmodule HamsterTravelWeb.Packing.IndexBackpacks do
  @moduledoc """
  Page showing all the backpacks
  """
  use HamsterTravelWeb, :live_view

  import HamsterTravelWeb.Container
  import HamsterTravelWeb.Gettext
  import HamsterTravelWeb.Link
  import HamsterTravelWeb.Packing.Grid

  alias HamsterTravel.Packing

  @impl true
  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(active_nav: :backpacks)
      |> assign(page_title: gettext("Backpacks"))
      |> assign(backpacks: Packing.list_backpacks(socket.assigns.current_user))

    {:ok, socket}
  end
end
