defmodule Entity.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, [], name: __MODULE__)
  end

  def init([]) do
    [ supervisor(Entity.Repo, []),
    ] |> supervise(strategy: :one_for_one)
  end

end
