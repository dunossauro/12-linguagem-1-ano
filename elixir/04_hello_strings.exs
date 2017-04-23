
defmodule Parser do
    def random_word(file) do
        Enum.random(tokenize(file))
    end
    def tokenize(file) do
        {:atom, string} = File.read(file)
        Regex.scan(~r/\w+/, string)
    end
end

IO.puts(Parser.tokenize("tabacaria.txt"))
