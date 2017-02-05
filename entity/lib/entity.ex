defmodule Entity do
  def start(_, _) do
    Entity.Supervisor.start_link
  end

  def hello do
    import Ecto.Query, only: [from: 2]
    query = from u in Entity.User, where: u.id in [455, 1000], select: u
    query
    |> Entity.Repo.all
    |> UserEntity.serialize
  end
end
