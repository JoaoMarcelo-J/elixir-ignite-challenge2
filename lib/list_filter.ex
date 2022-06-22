defmodule ListFilter do
  def call(list)do
    length(odd_numbers(list))
  end

  def odd_numbers(list)do
    Enum.flat_map(list, fn string ->
      case Integer.parse(string) do
        # transform to integer
        {int, _rest} -> Enum.filter([int], fn x -> rem(x, 2) != 0 end)
        # skip the value
        :error -> []
      end
    end)
  end
end
