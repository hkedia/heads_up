defmodule HeadsUpWeb.TipController do
  use HeadsUpWeb, :controller
  alias HeadsUp.Tips

  def index(conn, _params) do
    emojis = ~w(💚 💜 💙) |> Enum.random() |> String.duplicate(5)
    tips = Tips.list_tips()
    render(conn, :index, tips: tips, emojis: emojis)
  end

  def show(conn, %{"id" => id}) do
    render(conn, :show, tip: Tips.get_tip(id))
  end
end
