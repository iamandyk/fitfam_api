defmodule FitfamWeb.Schema do
  use Absinthe.Schema

  alias FitfamWeb.AccountsResolver

  object :user do
    field :id, non_null(:id)
    field :name, non_null(:string)
    field :email, non_null(:string)
  end

  query do
    @desc "Get all users"
    field :all_users, non_null(list_of(non_null(:user))) do
      resolve(&AccountsResolver.all_users/3)
    end
  end

  mutation do
    @desc "Create a new user"
    field :create_user, :user do
      arg(:name, non_null(:string))
      arg(:email, non_null(:string))

      resolve(&AccountsResolver.create_user/3)
    end
  end
end
