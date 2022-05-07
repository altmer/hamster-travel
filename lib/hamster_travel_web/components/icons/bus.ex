defmodule HamsterTravelWeb.Icons.Bus do
  @moduledoc """
  Bus icon
  """
  use HamsterTravelWeb, :component
  import PhxComponentHelpers

  def bus(assigns) do
    assigns
    |> extend_class("")
    |> render()
  end

  defp render(assigns) do
    ~H"""
    <svg
      width="18"
      height="18"
      stroke-width="1.5"
      viewBox="0 0 24 24"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      {@heex_class}
    >
      <path
        d="M7 16.01L7.01 15.9989"
        stroke="currentColor"
        stroke-linecap="round"
        stroke-linejoin="round"
      />
      <path
        d="M17 16.01L17.01 15.9989"
        stroke="currentColor"
        stroke-linecap="round"
        stroke-linejoin="round"
      />
      <path
        d="M3 12H21V19C21 19.5523 20.5523 20 20 20H4C3.44772 20 3 19.5523 3 19V12Z"
        stroke="currentColor"
        stroke-linecap="round"
        stroke-linejoin="round"
      />
      <path
        d="M21 8V6C21 3.79086 19.2091 2 17 2H7C4.79086 2 3 3.79086 3 6V8"
        stroke="currentColor"
        stroke-linecap="round"
        stroke-linejoin="round"
      />
      <path d="M7 8L17 8" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" />
      <path
        d="M4 20H8V22C8 22.5523 7.55228 23 7 23H5C4.44772 23 4 22.5523 4 22V20Z"
        fill="currentColor"
      />
      <path
        d="M16 20H20V22C20 22.5523 19.5523 23 19 23H17C16.4477 23 16 22.5523 16 22V20Z"
        fill="currentColor"
      />
    </svg>
    """
  end
end
