# Definição de uma lambda simples
soma = fn x, y -> x + y end
# lambdas sem argumentos
soma_2 = &(&1 + 2)


# Como definir módulos com lambdas??

# ExUnit.start()
# # Testando as funções
# defmodule Lambdatestes do
#     @doc """
#     Testa o módulo Somas
#     """
#   use ExUnit.Case, async: true
#     test "Teste Soma" do
#         assert soma.(2, 3) == 5
#     end
#     test "Teste soma_2" do
#         assert soma_2.(2) == 4
#     end
#     test "Teste composição" do
#         assert soma_2.(Foo.soma.(2,3)) == 7
#     end
# end
