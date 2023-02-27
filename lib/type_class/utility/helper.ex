defmodule TypeClass.Utility.Helper do
  defstruct [:value]

  defimpl TypeClass.Property.Generator, for: __MODULE__ do
    def generate(a), do: %TypeClass.Utility.Helper{value: a}
  end
end
