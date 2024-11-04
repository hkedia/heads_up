defmodule HeadsUpWeb.CustomComponents do
  use Phoenix.Component

  attr :status, :atom, values: [:pending, :resolved, :cancelled], required: true

  def badge(assigns) do
    ~H"""
    <div class={[
      "rounded-md px-2 py-1 text-xs font-medium uppercase inline-block border",
      @status == :resolved && "text-lime-600 border-lime-600",
      @status == :pending && "text-amber-600 border-amber-600",
      @status == :cancelled && "text-gray-600 border-gray-600"
    ]}>
      <%= @status %>
    </div>
    """
  end
end
