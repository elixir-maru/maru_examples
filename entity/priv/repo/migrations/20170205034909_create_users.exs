defmodule Entity.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :first_name, :string
      add :last_name, :string
    end

    create table(:posts) do
      add :title, :string
      add :user_id, references(:users)
    end

    create table(:comments) do
      add :content, :string
      add :post_id, references(:posts)
      add :user_id, references(:users)
    end
  end
end
