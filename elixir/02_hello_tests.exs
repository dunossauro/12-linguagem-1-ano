ExUnit.start

defmodule Somas do
    @doc """
    Módulo para funções de soma
    """
    def sum(y), do: sum(2, y) # Função parcial que soma mais 2 (exemplo)
    def sum(x, y), do: x + y
    def sum(x, y, z) do
        @doc """
        Para 3 argumentos
        """
        x + y + z
    end
end

defmodule AssertionTest do
    @doc """
    Testa o módulo Somas
    """
  use ExUnit.Case, async: false
    test "soma simples" do
        assert Somas.sum(3, 2) == 5
    end
    test "soma fail" do
        assert Somas.sum(3, 3) == 7
    end
    test "soma parcial de 2" do
        assert Somas.sum(3) == 5
    end
end
