File.read!("inputs/02-input.txt")
|> String.split("\n", trim: true)
|> Stream.map(fn line ->
  [enemy, res] =
    String.split(line, " ") |> Enum.map(fn x -> x |> String.to_charlist() |> hd end)

  res = res - 88
  enemy = enemy - 65

  case res do
    0 -> 0 + Integer.mod(enemy - 1, 3) + 1
    1 -> 3 + enemy + 1 
    2 -> 6 + Integer.mod(enemy + 1, 3) + 1
  end
end)
|> Enum.sum()
|> IO.puts()
