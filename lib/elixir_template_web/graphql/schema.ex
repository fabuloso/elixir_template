defmodule ElixirTemplateWeb.Graphql.Schema do
  use Absinthe.Schema

  query do
    @desc "Greet"
    field :greet, :string do
      resolve &hello_world/2
    end
  end

  defp hello_world(_, _), do: {:ok, "Hello World!"}
end
