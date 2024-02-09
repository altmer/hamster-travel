defmodule HamsterTravelWeb.Packing.AddList do
  @moduledoc """
  Live component responsible for creating a new backpack list
  """

  require Logger

  use HamsterTravelWeb, :live_component

  alias HamsterTravel.Packing

  def update(assigns, socket) do
    socket =
      socket
      |> assign(assigns)
      |> assign(edit: false)

    {:ok, socket}
  end

  def handle_event("edit", _, socket) do
    socket =
      socket
      |> assign(:edit, true)
      |> assign(:changeset, Packing.new_list())

    {:noreply, socket}
  end

  def handle_event("cancel", _, socket) do
    socket =
      socket
      |> assign(:edit, false)

    {:noreply, socket}
  end

  def handle_event("create", %{"list" => list_params}, socket) do
    case Packing.create_list(list_params, socket.assigns.backpack) do
      {:ok, _} ->
        {:noreply, assign(socket, %{edit: false})}

      {:error, changeset} ->
        Logger.warning(
          "Error creating list; params were #{inspect(list_params)}, result is #{inspect(changeset)}"
        )

        {:noreply, assign(socket, %{changeset: changeset})}
    end
  end

  def render(%{edit: true} = assigns) do
    ~H"""
    <div class="mb-5">
      <.inline>
        <.form :let={f} for={@changeset} phx-submit="create" phx-target={@myself} as={:list}>
          <.inline>
            <.text_input
              form={f}
              id={"add-list-#{@backpack.id}"}
              field={:name}
              placeholder={gettext("List name")}
              x-init="$el.focus()"
            />
            <.icon_button>
              <.icon name={:check} />
            </.icon_button>
          </.inline>
        </.form>
        <.icon_button phx-click="cancel" phx-target={@myself}>
          <.icon name={:x_mark} />
        </.icon_button>
      </.inline>
    </div>
    """
  end

  def render(assigns) do
    ~H"""
    <div class="mb-5">
      <.button color="primary" phx-click="edit" phx-target={@myself}>
        <.icon name={:plus} solid={true} class="w-5 h-5 mr-2" />
        <%= gettext("Add list") %>
      </.button>
    </div>
    """
  end
end