defmodule Entity.User do
  use Ecto.Schema

  schema "users" do
    field :first_name, :string
    field :last_name, :string
    has_many :posts, Entity.Post
    has_many :comments, Entity.Comment
  end
end

defmodule Entity.Post do
  use Ecto.Schema

  schema "posts" do
    field :title, :string
    has_many :comments, Entity.Comment
    belongs_to :author, Entity.User, foreign_key: :user_id
  end
end

defmodule Entity.Comment do
  use Ecto.Schema

  schema "comments" do
    field :content, :string
    belongs_to :post, Entity.Post
    belongs_to :author, Entity.User, foreign_key: :user_id
  end
end
