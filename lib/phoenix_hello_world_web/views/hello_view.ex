defmodule PhoenixHelloWorldWeb.HelloView do
  use PhoenixHelloWorldWeb, :view
  require IEx

  def name(name, upcase) do
    case upcase do
      "true" ->
        String.upcase(name)
      _ ->
        name
    end
  end
end