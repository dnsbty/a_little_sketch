defmodule ALittleSketch.Web.GameChannel do
  @moduledoc """
  The channel that handles communication with game clients
  """
  use ALittleSketch.Web, :channel
  alias ALittleSketch.Web.Presence

  def join("game:" <> _game_id, _, socket) do
    send self(), :after_join
    {:ok, socket}
  end

  def handle_info(:after_join, socket) do
    Presence.track(socket, socket.assigns.name, %{
      online_at: :os.system_time(:milli_seconds)
    })
    push(socket, "presence_state", Presence.list(socket))
    {:noreply, socket}
  end
end
