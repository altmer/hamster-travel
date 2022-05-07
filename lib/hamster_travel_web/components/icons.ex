defmodule HamsterTravelWeb.Icons do
  @moduledoc """
  Icons for live views
  """
  use HamsterTravelWeb, :component

  def home(assigns) do
    ~H"""
    <svg
      viewBox="0 0 15 15"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      width="18"
      height="18"
      class={classes(assigns)}
    >
      <path
        d="M7.5.5l.325-.38a.5.5 0 00-.65 0L7.5.5zm-7 6l-.325-.38L0 6.27v.23h.5zm5 8v.5a.5.5 0 00.5-.5h-.5zm4 0H9a.5.5 0 00.5.5v-.5zm5-8h.5v-.23l-.175-.15-.325.38zM1.5 15h4v-1h-4v1zm13.325-8.88l-7-6-.65.76 7 6 .65-.76zm-7.65-6l-7 6 .65.76 7-6-.65-.76zM6 14.5v-3H5v3h1zm3-3v3h1v-3H9zm.5 3.5h4v-1h-4v1zm5.5-1.5v-7h-1v7h1zm-15-7v7h1v-7H0zM7.5 10A1.5 1.5 0 019 11.5h1A2.5 2.5 0 007.5 9v1zm0-1A2.5 2.5 0 005 11.5h1A1.5 1.5 0 017.5 10V9zm6 6a1.5 1.5 0 001.5-1.5h-1a.5.5 0 01-.5.5v1zm-12-1a.5.5 0 01-.5-.5H0A1.5 1.5 0 001.5 15v-1z"
        fill="currentColor"
      >
      </path>
    </svg>
    """
  end

  def home_simple(assigns) do
    ~H"""
    <svg
      width="18"
      height="18"
      stroke-width="1.5"
      viewBox="0 0 24 24"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      class={classes(assigns)}
    >
      <path
        d="M9 21H7C4.79086 21 3 19.2091 3 17V10.7076C3 9.30887 3.73061 8.01175 4.92679 7.28679L9.92679 4.25649C11.2011 3.48421 12.7989 3.48421 14.0732 4.25649L19.0732 7.28679C20.2694 8.01175 21 9.30887 21 10.7076V17C21 19.2091 19.2091 21 17 21H15M9 21V17C9 15.3431 10.3431 14 12 14V14C13.6569 14 15 15.3431 15 17V21M9 21H15"
        stroke="currentColor"
        stroke-linecap="round"
        stroke-linejoin="round"
      />
    </svg>
    """
  end

  def pen(assigns) do
    ~H"""
    <svg
      viewBox="0 0 15 15"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      width="18"
      height="18"
      class={classes(assigns)}
    >
      <path
        d="M2.5.5V0H2v.5h.5zm10 0h.5V0h-.5v.5zM4.947 4.724a.5.5 0 00-.894-.448l.894.448zM2.5 8.494l-.447-.223-.146.293.21.251.383-.32zm5 5.997l-.384.32a.5.5 0 00.769 0l-.385-.32zm5-5.996l.384.32.21-.251-.146-.293-.447.224zm-1.553-4.219a.5.5 0 00-.894.448l.894-.448zM8 9.494v-.5H7v.5h1zm-.5-4.497A4.498 4.498 0 013 .5H2a5.498 5.498 0 005.5 5.497v-1zM2.5 1h10V0h-10v1zM12 .5a4.498 4.498 0 01-4.5 4.497v1c3.038 0 5.5-2.46 5.5-5.497h-1zM4.053 4.276l-2 3.995.895.448 2-3.995-.895-.448zM2.116 8.815l5 5.996.769-.64-5-5.996-.769.64zm5.768 5.996l5-5.996-.768-.64-5 5.996.769.64zm5.064-6.54l-2-3.995-.895.448 2 3.995.895-.448zM8 14.49V9.494H7v4.997h1z"
        fill="currentColor"
      >
      </path>
    </svg>
    """
  end

  def budget(assigns) do
    ~H"""
    <svg
      width="18"
      stroke-width="1.5"
      height="18"
      viewBox="0 0 24 24"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      class={classes(assigns)}
    >
      <path
        d="M19 20H5C3.89543 20 3 19.1046 3 18V9C3 7.89543 3.89543 7 5 7H19C20.1046 7 21 7.89543 21 9V18C21 19.1046 20.1046 20 19 20Z"
        stroke="currentColor"
      />
      <path
        d="M16.5 14C16.2239 14 16 13.7761 16 13.5C16 13.2239 16.2239 13 16.5 13C16.7761 13 17 13.2239 17 13.5C17 13.7761 16.7761 14 16.5 14Z"
        fill="currentColor"
        stroke="currentColor"
        stroke-linecap="round"
        stroke-linejoin="round"
      />
      <path
        d="M18 7V5.60322C18 4.28916 16.7544 3.33217 15.4847 3.67075L4.48467 6.60409C3.60917 6.83756 3 7.63046 3 8.53656V9"
        stroke="currentColor"
      />
    </svg>
    """
  end

  def calendar(assigns) do
    ~H"""
    <svg
      viewBox="0 0 15 15"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      width="15"
      height="15"
      class={classes(assigns)}
    >
      <path
        d="M3.5 0v5m8-5v5m-10-2.5h12a1 1 0 011 1v10a1 1 0 01-1 1h-12a1 1 0 01-1-1v-10a1 1 0 011-1z"
        stroke="currentColor"
      >
      </path>
    </svg>
    """
  end

  def user(assigns) do
    ~H"""
    <svg
      viewBox="0 0 15 15"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      width="15"
      height="15"
      class={classes(assigns)}
    >
      <path
        clip-rule="evenodd"
        d="M10.5 3.498a2.999 2.999 0 01-3 2.998 2.999 2.999 0 113-2.998zm2 10.992h-10v-1.996a3 3 0 013-3h4a3 3 0 013 3v1.997z"
        stroke="currentColor"
        stroke-linecap="square"
      >
      </path>
    </svg>
    """
  end

  def book(assigns) do
    ~H"""
    <svg
      viewBox="0 0 15 15"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      width="15"
      height="15"
      class={classes(assigns)}
    >
      <path
        d="M1.5.5V0a.5.5 0 00-.5.5h.5zm0 13H1a.5.5 0 00.5.5v-.5zM4 0v15h1V0H4zM1.5 1h10V0h-10v1zM13 2.5v9h1v-9h-1zM11.5 13h-10v1h10v-1zm-9.5.5V.5H1v13h1zm11-2a1.5 1.5 0 01-1.5 1.5v1a2.5 2.5 0 002.5-2.5h-1zM11.5 1A1.5 1.5 0 0113 2.5h1A2.5 2.5 0 0011.5 0v1zM7 5h4V4H7v1z"
        fill="currentColor"
      >
      </path>
    </svg>
    """
  end

  def note(assigns) do
    ~H"""
    <svg
      viewBox="0 0 15 15"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      width="15"
      height="15"
      class={classes(assigns)}
    >
      <path
        d="M10.5 14.5H10a.5.5 0 00.854.354L10.5 14.5zm0-4V10a.5.5 0 00-.5.5h.5zm4 0l.354.354A.5.5 0 0014.5 10v.5zM1.5 1h12V0h-12v1zM1 13.5v-12H0v12h1zm13-12v8.586h1V1.5h-1zM10.086 14H1.5v1h8.586v-1zm3.768-3.56l-3.415 3.414.707.707 3.415-3.415-.707-.707zM10.086 15a1.5 1.5 0 001.06-.44l-.707-.706a.5.5 0 01-.353.146v1zM14 10.086a.5.5 0 01-.146.353l.707.707a1.5 1.5 0 00.439-1.06h-1zM0 13.5A1.5 1.5 0 001.5 15v-1a.5.5 0 01-.5-.5H0zM13.5 1a.5.5 0 01.5.5h1A1.5 1.5 0 0013.5 0v1zm-12-1A1.5 1.5 0 000 1.5h1a.5.5 0 01.5-.5V0zM11 14.5v-4h-1v4h1zm-.5-3.5h4v-1h-4v1zm3.646-.854l-4 4 .708.708 4-4-.708-.708zM3 4h9V3H3v1z"
        fill="currentColor"
      >
      </path>
    </svg>
    """
  end

  def backpack(assigns) do
    ~H"""
    <svg
      width="20"
      version="1.1"
      id="Icons"
      xmlns="http://www.w3.org/2000/svg"
      xmlns:xlink="http://www.w3.org/1999/xlink"
      x="0px"
      y="0px"
      viewBox="0 0 144 144"
      enable-background="new 0 0 144 144"
      xml:space="preserve"
      class={classes(assigns)}
    >
      <path
        id="XMLID_567_"
        opacity="0.1"
        stroke="currentColor"
        d="M66,26.26V26v-2c0-4.056,2.7-6,6-6c3.3,0,6,1.79,6,5.8V26v0.259
      c3.352,0.293,6.337,0.841,9,1.625V27v-1c0-10.875-6.75-16-15-16s-15,5-15,16v1v0.888C59.663,27.103,62.648,26.554,66,26.26z"
      />
      <path
        id="XMLID_566_"
        opacity="0.1"
        stroke="currentColor"
        d="M28.035,118c0.266-3.082,1.389-13.299,2.593-24.03L31,90c-10.875,3-12,10.125-12,17.482
      v4.856c0,5.014,3.965,9.171,9,9.663l0.145-1.543C28.016,119.629,27.966,118.805,28.035,118z"
      />
      <path
        id="XMLID_565_"
        opacity="0.1"
        stroke="currentColor"
        d="M115.965,118c-0.266-3.082-1.389-13.299-2.593-24.03L113,90c10.875,3,12,10.125,12,17.482
      v4.856c0,5.014-3.965,9.171-9,9.663l-0.145-1.543C115.984,119.629,116.034,118.805,115.965,118z"
      />
      <path
        id="XMLID_564_"
        opacity="0.1"
        stroke="currentColor"
        d="M72,134h28c2.2,0,4-1.8,4-4l-4-18c-3-16.5-8.833-28-28-28s-25,11.5-28,28l-4,18
      c0,2.2,1.8,4,4,4H72z"
      />

      <path
        id="XMLID_561_"
        fill="none"
        stroke="currentColor"
        stroke-width="4"
        stroke-linecap="round"
        stroke-linejoin="round"
        stroke-miterlimit="10"
        d="
      M87,27v-1c0-10.875-6.75-16-15-16s-15,5-15,16v1"
      />

      <path
        id="XMLID_560_"
        fill="none"
        stroke="currentColor"
        stroke-width="4"
        stroke-linecap="round"
        stroke-linejoin="round"
        stroke-miterlimit="10"
        d="
      M98,63.75c-2.25-16-5.25-28-26-28s-23.75,12-26,28"
      />

      <line
        id="XMLID_559_"
        fill="none"
        stroke="currentColor"
        stroke-width="4"
        stroke-linecap="round"
        stroke-linejoin="round"
        stroke-miterlimit="10"
        x1="65"
        y1="96"
        x2="79"
        y2="96"
      />

      <path
        id="XMLID_556_"
        fill="none"
        stroke="currentColor"
        stroke-width="4"
        stroke-linecap="round"
        stroke-linejoin="round"
        stroke-miterlimit="10"
        d="
      M31,90c-10.875,3-12,10.125-12,17.482v4.856c0,5.014,3.965,9.171,9,9.663"
      />

      <path
        id="XMLID_555_"
        fill="none"
        stroke="currentColor"
        stroke-width="4"
        stroke-linecap="round"
        stroke-linejoin="round"
        stroke-miterlimit="10"
        d="
      M113,90c10.875,3,12,10.125,12,17.482v4.856c0,5.014-3.965,9.171-9,9.663"
      />

      <path
        id="XMLID_553_"
        fill="none"
        stroke="currentColor"
        stroke-width="4"
        stroke-linecap="round"
        stroke-linejoin="round"
        stroke-miterlimit="10"
        d="
      M72,134h28c2.2,0,4-1.8,4-4l-4-18c-3-16.5-8.833-28-28-28s-25,11.5-28,28l-4,18c0,2.2,1.8,4,4,4H72z"
      />

      <path
        id="XMLID_552_"
        fill="none"
        stroke="currentColor"
        stroke-width="4"
        stroke-linecap="round"
        stroke-linejoin="round"
        stroke-miterlimit="10"
        d="
      M66,26v-2c0-4.056,2.7-6,6-6s6,1.79,6,5.8V26"
      />

      <path
        id="XMLID_550_"
        fill="none"
        stroke="currentColor"
        stroke-width="4"
        stroke-linecap="round"
        stroke-linejoin="round"
        stroke-miterlimit="10"
        d="
      M72.015,134h27.952c8.796,0,16.622-8.75,15.997-16c-0.625-7.25-5.993-54-5.993-54c-3.124-22.5-9.112-38-37.974-38h0.018
      c-28.862,0-34.859,15.5-37.983,38c0,0-5.373,46.75-5.997,54c-0.625,7.25,7.197,16,15.993,16H72.015z"
      />
    </svg>
    """
  end

  def airplane(assigns) do
    ~H"""
    <svg
      width="18"
      height="18"
      stroke-width="1.5"
      viewBox="0 0 24 24"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      class={classes(assigns)}
    >
      <path
        d="M10.5 4.5V9.16745C10.5 9.37433 10.3934 9.56661 10.218 9.67625L2.782 14.3237C2.60657 14.4334 2.5 14.6257 2.5 14.8325V15.7315C2.5 16.1219 2.86683 16.4083 3.24552 16.3136L9.75448 14.6864C10.1332 14.5917 10.5 14.8781 10.5 15.2685V18.2277C10.5 18.4008 10.4253 18.5654 10.2951 18.6793L8.13481 20.5695C7.6765 20.9706 8.03808 21.7204 8.63724 21.6114L11.8927 21.0195C11.9636 21.0066 12.0364 21.0066 12.1073 21.0195L15.3628 21.6114C15.9619 21.7204 16.3235 20.9706 15.8652 20.5695L13.7049 18.6793C13.5747 18.5654 13.5 18.4008 13.5 18.2277V15.2685C13.5 14.8781 13.8668 14.5917 14.2455 14.6864L20.7545 16.3136C21.1332 16.4083 21.5 16.1219 21.5 15.7315V14.8325C21.5 14.6257 21.3934 14.4334 21.218 14.3237L13.782 9.67625C13.6066 9.56661 13.5 9.37433 13.5 9.16745V4.5C13.5 3.67157 12.8284 3 12 3C11.1716 3 10.5 3.67157 10.5 4.5Z"
        stroke="currentColor"
        stroke-linecap="round"
        stroke-linejoin="round"
      />
    </svg>
    """
  end

  def bus(assigns) do
    ~H"""
    <svg
      width="18"
      height="18"
      stroke-width="1.5"
      viewBox="0 0 24 24"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      class={classes(assigns)}
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

  def car(assigns) do
    ~H"""
    <svg
      width="18"
      height="18"
      stroke-width="1.5"
      viewBox="0 0 24 24"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      class={classes(assigns)}
    >
      <path d="M8 10L16 10" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" />
      <path d="M7 14L8 14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" />
      <path d="M16 14L17 14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" />
      <path
        d="M3 18V11.4105C3 11.1397 3.05502 10.8716 3.16171 10.6227L5.4805 5.21216C5.79566 4.47679 6.51874 4 7.31879 4H16.6812C17.4813 4 18.2043 4.47679 18.5195 5.21216L20.8383 10.6227C20.945 10.8716 21 11.1397 21 11.4105V18M3 18V20.4C3 20.7314 3.26863 21 3.6 21H6.4C6.73137 21 7 20.7314 7 20.4V18M3 18H7M21 18V20.4C21 20.7314 20.7314 21 20.4 21H17.6C17.2686 21 17 20.7314 17 20.4V18M21 18H17M7 18H17"
        stroke="currentColor"
        stroke-width="1.5"
      />
    </svg>
    """
  end

  def train(assigns) do
    ~H"""
    <svg
      width="18"
      height="18"
      stroke-width="1.5"
      viewBox="0 0 24 24"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      class={classes(assigns)}
    >
      <path
        d="M9.6087 7H14.3913C15.832 7 17 8.16795 17 9.6087C17 9.82481 16.8248 10 16.6087 10H7.3913C7.17519 10 7 9.82481 7 9.6087C7 8.16795 8.16795 7 9.6087 7Z"
        stroke="currentColor"
        stroke-linecap="round"
        stroke-linejoin="round"
      />
      <path
        d="M7 19H10L8.27639 22.4472C8.107 22.786 7.76074 23 7.38197 23H6.61803C5.87465 23 5.39116 22.2177 5.72361 21.5528L7 19Z"
        fill="currentColor"
      />
      <path
        d="M17 19H14L15.7236 22.4472C15.893 22.786 16.2393 23 16.618 23H17.382C18.1253 23 18.6088 22.2177 18.2764 21.5528L17 19Z"
        fill="currentColor"
      />
      <path
        d="M9 3H15C18.3137 3 21 5.68629 21 9V13C21 16.3137 18.3137 19 15 19H9C5.68629 19 3 16.3137 3 13V9C3 5.68629 5.68629 3 9 3Z"
        stroke="currentColor"
        stroke-linecap="round"
        stroke-linejoin="round"
      />
      <path
        d="M16 15.01L16.01 14.9989"
        stroke="currentColor"
        stroke-linecap="round"
        stroke-linejoin="round"
      />
      <path
        d="M8 15.01L8.01 14.9989"
        stroke="currentColor"
        stroke-linecap="round"
        stroke-linejoin="round"
      />
    </svg>
    """
  end

  def taxi(assigns) do
    ~H"""
    <svg
      width="18"
      height="18"
      style="fill: currentColor;"
      viewBox="0 0 1024 1024"
      version="1.1"
      xmlns="http://www.w3.org/2000/svg"
      class={classes(assigns)}
    >
      <path
        d="M341.333333 170.666667c-3.413333 0-6.826667 0-10.24-3.413334-6.826667-3.413333-10.24-13.653333-3.413333-23.893333L375.466667 64.853333c6.826667-17.066667 27.306667-30.72 51.2-30.72h167.253333c23.893333 0 44.373333 13.653333 54.613333 34.133334l51.2 78.506666c6.826667 6.826667 3.413333 17.066667-3.413333 23.893334-13.653333 3.413333-23.893333 0-27.306667-6.826667l-51.2-78.506667c-6.826667-10.24-13.653333-17.066667-23.893333-17.066666h-167.253333c-10.24 0-17.066667 6.826667-23.893334 13.653333l-47.786666 78.506667c-3.413333 6.826667-6.826667 10.24-13.653334 10.24zM256 716.8H68.266667c-10.24 0-17.066667-6.826667-17.066667-17.066667s6.826667-17.066667 17.066667-17.066666h170.666666c-6.826667-37.546667-30.72-68.266667-64.853333-68.266667h-102.4c-10.24 0-17.066667-6.826667-17.066667-17.066667s6.826667-17.066667 17.066667-17.066666h102.4C228.693333 580.266667 273.066667 634.88 273.066667 699.733333c0 10.24-6.826667 17.066667-17.066667 17.066667zM645.12 750.933333h-262.826667c-6.826667 0-17.066667-6.826667-17.066666-13.653333l-20.48-136.533333c0-3.413333 0-10.24 3.413333-13.653334 3.413333-3.413333 6.826667-6.826667 13.653333-6.826666h307.2c3.413333 0 10.24 3.413333 13.653334 6.826666 3.413333 3.413333 3.413333 10.24 3.413333 13.653334l-20.48 136.533333c-6.826667 6.826667-13.653333 13.653333-20.48 13.653333z m-249.173333-34.133333h235.52l17.066666-102.4h-266.24l13.653334 102.4zM109.226667 443.733333c-3.413333 0-3.413333 0 0 0-44.373333-6.826667-109.226667-20.48-109.226667-58.026666 0-27.306667 10.24-51.2 27.306667-64.853334 34.133333-23.893333 81.92-13.653333 85.333333-13.653333 3.413333 0 6.826667 3.413333 10.24 6.826667l44.373333 78.506666c3.413333 10.24 3.413333 13.653333 3.413334 20.48 0 3.413333-3.413333 6.826667-10.24 10.24l-44.373334 20.48h-6.826666z m-27.306667-102.4c-10.24 0-23.893333 3.413333-34.133333 10.24-10.24 6.826667-13.653333 17.066667-13.653334 34.133334 3.413333 6.826667 37.546667 17.066667 71.68 20.48l23.893334-10.24-34.133334-54.613334h-13.653333z"
        fill=""
      />
      <path
        d="M505.173333 443.733333c-92.16 0-354.986667-20.48-368.64-20.48-10.24 0-17.066667-10.24-17.066666-17.066666s10.24-17.066667 17.066666-17.066667c3.413333 0 273.066667 20.48 365.226667 20.48s361.813333-20.48 365.226667-20.48c10.24 0 17.066667 6.826667 17.066666 17.066667s-6.826667 17.066667-17.066666 17.066666c-6.826667 0-269.653333 20.48-361.813334 20.48zM955.733333 716.8h-187.733333c-10.24 0-17.066667-6.826667-17.066667-17.066667 0-64.853333 44.373333-119.466667 98.986667-119.466666h102.4c10.24 0 17.066667 6.826667 17.066667 17.066666s-6.826667 17.066667-17.066667 17.066667h-102.4c-30.72 0-58.026667 30.72-64.853333 68.266667h170.666666c10.24 0 17.066667 6.826667 17.066667 17.066666s-6.826667 17.066667-17.066667 17.066667z"
        fill=""
      />
      <path
        d="M914.773333 443.733333h-6.826666l-44.373334-20.48-10.24-10.24v-13.653333l44.373334-78.506667c3.413333-3.413333 6.826667-6.826667 10.24-6.826666 3.413333 0 51.2-13.653333 85.333333 13.653333 17.066667 13.653333 27.306667 34.133333 27.306667 64.853333 3.413333 30.72-61.44 44.373333-105.813334 51.2 3.413333 0 3.413333 0 0 0z m-20.48-44.373333l23.893334 10.24c34.133333-6.826667 68.266667-17.066667 71.68-23.893333 0-13.653333-3.413333-27.306667-13.653334-34.133334-13.653333-10.24-37.546667-10.24-47.786666-10.24l-34.133334 58.026667zM853.333333 989.866667h-34.133333c-37.546667 0-68.266667-30.72-68.266667-68.266667v-71.68c0-10.24 6.826667-17.066667 13.653334-17.066667l23.893333-3.413333 112.64-17.066667c3.413333 0 10.24 0 13.653333 3.413334 3.413333 3.413333 6.826667 6.826667 6.826667 10.24V921.6c0 37.546667-30.72 68.266667-68.266667 68.266667z m-68.266666-122.88V921.6c0 20.48 13.653333 34.133333 34.133333 34.133333h34.133333c20.48 0 34.133333-13.653333 34.133334-34.133333v-71.68l-92.16 13.653333-10.24 3.413334zM204.8 989.866667H170.666667c-37.546667 0-68.266667-30.72-68.266667-68.266667v-85.333333-6.826667c0-3.413333 3.413333-10.24 6.826667-13.653333 3.413333-3.413333 6.826667-3.413333 13.653333-3.413334l112.64 17.066667s10.24 0 23.893333 3.413333c10.24 0 13.653333 6.826667 13.653334 17.066667V921.6c0 37.546667-30.72 68.266667-68.266667 68.266667z m-68.266667-139.946667V921.6c0 20.48 13.653333 34.133333 34.133334 34.133333h34.133333c20.48 0 34.133333-13.653333 34.133333-34.133333v-54.613333h-10.24L136.533333 849.92z"
        fill=""
      />
      <path
        d="M512 887.466667c-122.88 0-279.893333-20.48-283.306667-20.48l-129.706666-20.48c-3.413333 0-6.826667-3.413333-10.24-3.413334-34.133333-40.96-54.613333-133.12-54.613334-204.8 0-85.333333 40.96-184.32 95.573334-238.933333 30.72-95.573333 109.226667-211.626667 157.013333-238.933333 27.306667-13.653333 129.706667-23.893333 225.28-23.893334s197.973333 10.24 221.866667 23.893334c51.2 23.893333 126.293333 139.946667 157.013333 238.933333 58.026667 54.613333 95.573333 157.013333 95.573333 238.933333 0 71.68-20.48 167.253333-58.026666 201.386667-3.413333 3.413333-6.826667 3.413333-10.24 3.413333l-129.706667 20.48c3.413333 3.413333-153.6 23.893333-276.48 23.893334zM112.64 812.373333l122.88 20.48s157.013333 20.48 276.48 20.48 276.48-20.48 276.48-20.48l122.88-20.48c23.893333-27.306667 44.373333-102.4 44.373333-174.08 0-75.093333-37.546667-170.666667-88.746666-218.453333-3.413333-3.413333-3.413333-3.413333-3.413334-6.826667-30.72-102.4-105.813333-204.8-143.36-221.866666C703.146667 180.906667 614.4 170.666667 512 170.666667s-191.146667 10.24-208.213333 20.48c-34.133333 17.066667-109.226667 119.466667-143.36 221.866666 0 3.413333-3.413333 6.826667-3.413334 6.826667C105.813333 467.626667 68.266667 559.786667 68.266667 638.293333c0 68.266667 20.48 143.36 44.373333 174.08z"
        fill=""
      />
    </svg>
    """
  end

  def ship(assigns) do
    ~H"""
    <svg
      width="18"
      height="18"
      style="fill: currentColor;"
      viewBox="0 0 1024 1024"
      version="1.1"
      xmlns="http://www.w3.org/2000/svg"
      class={classes(assigns)}
    >
      <path d="M254.094204 888.715204 105.38434 479.399307 95.298022 505.547191 531.981478 274.863088 511.246884 274.415218 927.896762 518.087563 919.147567 491.063287 823.569182 707.765783C818.814532 718.545884 823.699125 731.13929 834.479226 735.893939 845.259328 740.648591 857.852732 735.763998 862.607381 724.983895L958.185766 508.281402C962.562163 498.358908 958.797909 486.731985 949.436572 481.257126L532.786694 237.584782C526.417653 233.85993 518.576041 233.69055 512.0521 237.136912L75.368645 467.821013C65.95003 472.796529 61.644922 483.957137 65.282327 493.968898L213.992191 903.284796C218.015472 914.35866 230.254127 920.074289 241.327993 916.051006 252.401858 912.027725 258.117485 899.789071 254.094204 888.715204L254.094204 888.715204Z" />
      <path d="M501.333333 277.333333 501.333333 853.333333C501.333333 865.115407 510.884593 874.666667 522.666667 874.666667 534.44874 874.666667 544 865.115407 544 853.333333L544 277.333333C544 265.551259 534.44874 256 522.666667 256 510.884593 256 501.333333 265.551259 501.333333 277.333333L501.333333 277.333333Z" />
      <path d="M234.666667 403.821225 234.666667 192 213.30699 213.333317 810.640322 214.070941 789.333333 192.737624 789.333333 426.666667C789.333333 438.44874 798.884593 448 810.666667 448 822.44874 448 832 438.44874 832 426.666667L832 192.737624C832 180.965836 822.464789 171.418844 810.693011 171.404307L213.359677 170.666683C201.567322 170.652121 192 180.207636 192 192L192 403.821225C192 415.603298 201.551259 425.154558 213.333333 425.154558 225.115408 425.154558 234.666667 415.603298 234.666667 403.821225L234.666667 403.821225Z" />
      <path d="M50.808629 885.090656C59.57446 891.98755 74.359082 901.898603 93.457074 911.777417 125.833244 928.524631 158.87312 938.666667 191.200647 938.666667 194.159993 938.666667 197.125968 938.490381 200.101743 938.143554 215.160419 936.388463 229.750682 930.546782 246.981287 920.516474 253.290676 916.843642 259.67245 912.800755 268.51965 906.963369 270.933897 905.370447 279.678588 899.563123 279.334447 899.791241 283.686688 896.906313 287.021523 894.717329 290.313331 892.593978 349.341858 854.518165 394.110662 842.971332 458.251198 861.801203 499.945909 874.041609 531.81113 885.915846 562.013282 899.523206 564.427757 900.611029 610.274961 922.482718 622.334739 927.069694 643.349741 935.062818 663.178867 938.666667 689.241841 938.666667 716.338238 938.666665 728.977969 934.064819 791.184625 906.613628 871.129935 871.334541 915.734313 866.539106 969.593022 902.038165 979.430453 908.522161 992.661587 905.803663 999.145581 895.966229 1005.629577 886.128796 1002.911078 872.897664 993.073645 866.413668 923.841726 820.781903 865.884521 827.012905 773.958923 867.578775 719.179394 891.752448 707.512794 895.999998 689.241837 896 668.334466 896 653.646641 893.330558 637.503006 887.190274 627.363543 883.333696 583.439821 862.379616 579.539729 860.62246 547.579132 846.222844 513.877129 833.664147 470.269737 820.862236 392.284911 797.968066 335.65418 812.574345 267.185634 856.739356 203.418324 897.871874 210.013117 894.032902 195.162376 895.763757 193.807429 895.921677 192.489657 896 191.200647 896 166.730635 896 139.899367 887.76378 113.059968 873.88057 103.454075 868.911733 94.55576 863.578065 86.625828 858.262138 81.957097 855.132397 78.730138 852.769342 77.191371 851.558652 67.931764 844.273259 54.519391 845.873675 47.233998 855.133282 39.948604 864.39289 41.549021 877.805263 50.808629 885.090656L50.808629 885.090656Z" />
      <path d="M362.666667 185.139587 362.666667 106.666667 341.333333 128 704 128 682.666667 106.666667 682.666667 192C682.666667 203.782075 692.217926 213.333333 704 213.333333 715.782074 213.333333 725.333333 203.782075 725.333333 192L725.333333 106.666667C725.333333 94.884592 715.782074 85.333333 704 85.333333L341.333333 85.333333C329.55126 85.333333 320 94.884592 320 106.666667L320 185.139587C320 196.921662 329.55126 206.47292 341.333333 206.47292 353.115407 206.47292 362.666667 196.921662 362.666667 185.139587L362.666667 185.139587Z" />
    </svg>
    """
  end

  def arrow_left(assigns) do
    ~H"""
    <svg
      viewBox="0 0 15 15"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      width="15"
      height="15"
      class={classes(assigns)}
    >
      <path d="M1.5 7.5l4-4m-4 4l4 4m-4-4H14" stroke="currentColor"></path>
    </svg>
    """
  end

  def edit(assigns) do
    ~H"""
    <svg
      xmlns="http://www.w3.org/2000/svg"
      class={"h-4 w-4 #{classes(assigns)}"}
      fill="none"
      viewBox="0 0 24 24"
      stroke="currentColor"
    >
      <path
        stroke-linecap="round"
        stroke-linejoin="round"
        stroke-width="2"
        d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"
      />
    </svg>
    """
  end

  def delete(assigns) do
    ~H"""
    <svg
      xmlns="http://www.w3.org/2000/svg"
      class={"h-4 w-4 #{classes(assigns)}"}
      fill="none"
      viewBox="0 0 24 24"
      stroke="currentColor"
    >
      <path
        stroke-linecap="round"
        stroke-linejoin="round"
        stroke-width="2"
        d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"
      />
    </svg>
    """
  end

  defp classes(assigns) do
    assigns[:class] || ""
  end
end
