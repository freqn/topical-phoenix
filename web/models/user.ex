defmodule Discuss.User do
  use Discuss.Web, :model
  alias Discuss.Topic

  schema "users" do
    field :email, :string
    field :provider, :string
    field :token, :string
    has_many :topics, Topic
    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :provider, :token])
    |> validate_required([:email, :provider, :token])
  end
end