defmodule Parser do
    def random_word(file) do
        Enum.random(tokenize(file))
    end
    def tokenize(file) do
        File.stream!(file, :line)
        |> Stream.flat_map(&String.split/1)
        |> Enum.reduce(%{}, fn word, map ->
            Map.update(map, word, 1, & &1 +1)
        end)
    end
end

Enum.each(Parser.tokenize("tabacaria.txt"), fn s -> IO.puts s end)
