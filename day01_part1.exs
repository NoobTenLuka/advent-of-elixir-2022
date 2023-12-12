File.read!("inputs/01-input.txt")
|> String.split("\n\n")
|> Stream.map(fn elve ->
  elve |> String.trim() |> String.split("\n") |> Enum.map(&String.to_integer(&1)) |> Enum.sum()
end)
|> Enum.max()
|> IO.puts()
