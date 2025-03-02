defmodule ElixirPobedaWeb.HomeLive do
  @moduledoc false
  use ElixirPobedaWeb, :live_view

  @elixir_date ~U[2012-05-25 19:39:00Z]

  def years do
    nanoseconds = DateTime.diff(DateTime.utc_now(), @elixir_date, :nanosecond)

    nanoseconds / 1_000_000_000 / 3600 / 24 / 365
  end

  def mount(_params, _session, socket) do
    if connected?(socket), do: :timer.send_interval(100, :tick)

    {:ok, assign(socket, %{years_since: years()})}
  end

  def handle_info(:tick, socket) do
    {:noreply, update(socket, :years_since, fn _ -> years() end)}
  end
end
