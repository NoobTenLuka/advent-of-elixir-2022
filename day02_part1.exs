File.read!("inputs/02-input.txt")
|> String.split("\n", trim: true)
|> Stream.map(fn line ->
  [enemy, mine] =
    String.split(line, " ") |> Enum.map(fn x -> x |> String.to_charlist() |> hd end)

  mine = mine - 88
  enemy = enemy - 65

  case Integer.mod(enemy - mine, 3) do
    0 -> 3
    1 -> 0
    2 -> 6
  end + mine + 1
end)
|> Enum.sum()
|> IO.puts()
