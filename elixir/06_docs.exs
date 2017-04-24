# para importar no shell -> c("file", "dir")

defmodule Docs do
    @moduledoc """
    Esse módulo é só um teste para exportar para md
    """
    @vsn 0.1

    @doc """
    Função simples
    """
    @spec funcao_normal(number()) :: number()
    def funcao_normal(x) do
        funcao_privada(x)
    end
    # Função privada
    defp funcao_privada(x) do
        x
    end
    @doc """
    Função de uma linha
    """
    def uma_linha(x), do: x
end
