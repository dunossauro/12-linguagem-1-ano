IO.puts("Joguinho besta\n")


defmodule Game do
    def round(val, tentativas) do
        chute = IO.gets("Digite um número entre 1 e 100: ")
        {chute, _} = Integer.parse(chute)
        cond do
            tentativas == 0 ->
                "Você perdeu"
            chute > val ->
                IO.puts("Você errou, seu chute é maior que o valor, você tem #{tentativas} tentativa")
                round(val, tentativas - 1)
            chute < val ->
                IO.puts("Você errou, seu chute é menor que o valor, você tem #{tentativas} tentativa")
                round(val, tentativas - 1)
            chute == val ->
                "Você ganhou"
        end
    end
end

val = hd Enum.take_random(1..100, 1)
IO.puts(Game.round(val, 9))
