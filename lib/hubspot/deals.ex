defmodule Hubspot.Deals do
  @doc """
  Returns a struct that is used in `Hubspot.Client` for
  getting all deals from Hubspot.

  ## Examples
      iex> Hubspot.Deals.all()
      %Hubspot.HTTP.Request{endpoint: "/crm/v3/objects/deals",
        method: :get, query: [], body: ""}

      iex> Hubspot.Contacts.all([count: 10, vidOffset: 100])
      %Hubspot.HTTP.Request{endpoint: "/crm/v3/objects/deals",
        method: :get, query: [count: 10, vidOffset: 100], body: ""}
  """
  @spec all(list) :: %Hubspot.HTTP.Request{}
  def all(params \\ []) do
    %Hubspot.HTTP.Request{
      endpoint: "/crm/v3/objects/deals",
      method: :get,
      query: params
    }
  end
end
