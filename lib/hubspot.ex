defmodule Hubspot do
  alias Hubspot.HTTP.Client

  import Application, only: [get_env: 2]

  def request(%Hubspot.HTTP.Request{} = request) do
    Client.request(
      request.method,
      request.endpoint,
      request.body,
      [Authorization: "Bearer #{get_env(:hubspotex, :access_token)}"],
      request.query
    )
  end
end
