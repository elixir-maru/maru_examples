defmodule UserEntity do
  use Maru.Entity

  expose :id
  expose :name, [], fn instance, _options ->
    "#{instance.first_name} #{instance.last_name}"
  end

  expose :posts, [using: List[PostEntity]], fn instance, _options ->
    instance
    |> Ecto.assoc(:posts)
    |> Entity.Repo.all
  end
end

defmodule PostEntity do
  use Maru.Entity

  expose :id
  expose :title
  expose :comments, using: List[CommentEntity], batch: PostCommentBatchHelper
end

defmodule CommentEntity do
  use Maru.Entity

  expose :id
  expose :content
  expose :author, using: AuthorEntity, batch: CommentAuthorBatchHelper
end

defmodule AuthorEntity do
  use Maru.Entity

  expose :id
  expose :first_name
  expose :last_name
end


defmodule PostCommentBatchHelper do
  import Ecto.Query, only: [from: 2]

  def key(instance, _options) do
    instance.id
  end

  def resolve(ids) do
    query =
      from c in Entity.Comment,
        where: c.post_id in ^ids,
        select: c
    query
    |> Entity.Repo.all
    |> Enum.group_by(fn i -> i.post_id end)
  end
end


defmodule CommentAuthorBatchHelper do
  import Ecto.Query, only: [from: 2]

  def key(instance, _options) do
    instance.user_id
  end

  def resolve(ids) do
    query =
      from u in Entity.User,
        where: u.id in ^ids,
        select: u
    Entity.Repo.all(query) |> Map.new(&{&1.id, &1})
  end
end
