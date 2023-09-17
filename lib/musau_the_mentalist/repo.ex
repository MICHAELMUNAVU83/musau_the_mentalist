defmodule MusauTheMentalist.Repo do
  use Ecto.Repo,
    otp_app: :musau_the_mentalist,
    adapter: Ecto.Adapters.MyXQL
end
