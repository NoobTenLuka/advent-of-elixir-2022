File.read!("inputs/01-input.txt")
|> String.split("\n\n")
|> Stream.map(fn elve ->
  elve |> String.trim() |> String.split("\n") |> Enum.map(&String.to_integer(&1)) |> Enum.sum()
end)
|> Enum.reduce({0, 0, 0}, fn x, acc ->
  cond do
    x > elem(acc, 0) -> {x, elem(acc, 0), elem(acc, 1)}
    x > elem(acc, 1) -> {elem(acc, 0), x, elem(acc, 1)}
    x > elem(acc, 2) -> put_elem(acc, 2, x)
    true -> acc
  end
end)
|> Tuple.to_list()
|> Enum.sum()
|> IO.puts()
