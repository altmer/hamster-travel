defmodule HamsterTravelWeb.Packing.BackpackItem do
  @moduledoc """
  Live component responsible for showing and editing a single backpack item
  """

  use HamsterTravelWeb, :live_component

  import HamsterTravelWeb.Inline
  import PhxComponentHelpers

  require Logger

  alias HamsterTravel.Packing

  def update(assigns, socket) do
    assigns =
      assigns
      |> set_attributes([], required: [:item])

    socket = socket |> assign(assigns) |> assign(:edit, false)

    {:ok, socket}
  end

  def handle_event("check", %{"item" => %{"checked" => checked}}, socket) do
    item_to_update = socket.assigns.item

    case Packing.update_item_checked(item_to_update, checked) do
      {:ok, item} ->
        socket =
          socket
          |> assign(:item, item)

        {:noreply, socket}

      {:error, error} ->
        Logger.error(
          "Could not update an item #{item_to_update.id} because of #{Kernel.inspect(error)}"
        )

        {:noreply, socket}
    end
  end

  def handle_event("edit", _, socket) do
    item = socket.assigns.item

    socket =
      socket
      |> assign(:edit, true)
      |> assign(:name, Packing.format_item(item))

    {:noreply, socket}
  end

  def handle_event("cancel", _, socket) do
    socket =
      socket
      |> assign(:edit, false)

    {:noreply, socket}
  end

  def handle_event("change_name", %{"item" => %{"name" => name}}, socket) do
    {:noreply, assign(socket, %{name: name})}
  end

  def handle_event("update", %{"item" => params}, socket) do
    item_to_update = socket.assigns.item

    case Packing.update_item(item_to_update, params) do
      {:ok, item} ->
        socket =
          socket
          |> assign(:item, item)
          |> assign(:edit, false)

        {:noreply, socket}

      {:error, error} ->
        Logger.error(
          "Could not update an item #{item_to_update.id} because of #{Kernel.inspect(error)}"
        )

        socket =
          socket
          |> assign(:edit, false)

        {:noreply, socket}
    end
  end

  def handle_event("delete", _, socket) do
    {:noreply, socket}
  end

  def render(%{edit: false} = assigns) do
    ~H"""
    <div class="mt-3">
      <.inline class="!gap gap-1">
        <.form :let={f} for={:item} class="grow mr-2" phx-change="check" phx-target={@myself}>
          <%= label class: "cursor-pointer" do %>
            <.inline>
              <.checkbox
                form={f}
                id={"item-#{@item.id}"}
                field={:checked}
                label={@item.name}
                value={@item.checked}
              />
              <div class="text-sm grow"><%= @item.name %></div>
              <div class="text-sm justify-self-end"><%= @item.count %></div>
            </.inline>
          <% end %>
        </.form>
        <.icon_button
          link_type="button"
          size="xs"
          color="gray"
          class="justify-self-end"
          phx-click="edit"
          phx-target={@myself}
        >
          <Heroicons.Outline.pencil class={
            PetalComponents.Button.get_icon_button_spinner_size_classes("xs")
          } />
        </.icon_button>
        <.icon_button
          link_type="button"
          size="xs"
          color="gray"
          class="justify-self-end"
          phx-click="delete"
          phx-target={@myself}
        >
          <Heroicons.Outline.trash class={
            PetalComponents.Button.get_icon_button_spinner_size_classes("xs")
          } />
        </.icon_button>
      </.inline>
    </div>
    """
  end

  def render(%{edit: true} = assigns) do
    ~H"""
    <div class="mt-3">
      <.inline>
        <.form
          :let={f}
          for={:item}
          phx-submit="update"
          phx-change="change_name"
          phx-target={@myself}
          as={:item}
        >
          <.inline>
            <.text_input
              form={f}
              id={"update-item-#{@item.id}"}
              field={:name}
              placeholder={@name}
              value={@name}
              autofocus
            />
            <.icon_button link_type="button" size="xs" color="gray">
              <Heroicons.Outline.check class={
                PetalComponents.Button.get_icon_button_spinner_size_classes("xs")
              } />
            </.icon_button>
          </.inline>
        </.form>
        <.icon_button
          link_type="button"
          size="xs"
          color="gray"
          phx-click="cancel"
          phx-target={@myself}
        >
          <Heroicons.Outline.x class={
            PetalComponents.Button.get_icon_button_spinner_size_classes("xs")
          } />
        </.icon_button>
      </.inline>
    </div>
    """
  end
end
