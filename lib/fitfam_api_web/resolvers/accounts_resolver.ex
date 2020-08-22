defmodule FitfamWeb.AccountsResolver do
  alias FitfamApi.Accounts

  def all_users(_root, _args, _info) do
    {:ok, Accounts.list_users()}
  end
end
