```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  try do
    if x == 3 do
      Process.exit(self(), :normal)
    end
    IO.puts(x)
  catch
    :exit ->
      IO.puts("Process exited prematurely")
  end
end)
```