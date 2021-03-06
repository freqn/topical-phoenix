defmodule Discuss.Topic do
  use Discuss.Web, :model
  alias Discuss.User

  schema "topics" do
    field :title, :string
    belongs_to :user, User
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end