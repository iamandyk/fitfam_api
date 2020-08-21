# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     FitfamApi.Repo.insert!(%FitfamApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias FitfamApi.Accounts.User
alias FitfamApi.Repo

%User{name: "Andy Kay", email: "andy@fitfam.me"} |> Repo.insert!()
%User{name: "Arnold Schwarzenegger", email: "arnold@fitfam.me"} |> Repo.insert!()
