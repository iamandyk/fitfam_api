defmodule FitfamApi.Repo do
  use Ecto.Repo,
    otp_app: :fitfam_api,
    adapter: Ecto.Adapters.MyXQL
end
