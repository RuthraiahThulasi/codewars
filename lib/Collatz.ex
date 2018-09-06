defmodule Collatz do


    # import Integer
    #
    # def collatz(1), do: "1"
    # def collatz(n) when is_odd(n), do: Integer.to_string(n) <> "->" <> collatz(3*n + 1)
    # def collatz(n) when is_even(n), do: Integer.to_string(n) <> "->" <> collatz(div(n, 2))


  def collatz(n) do

    collatz(n,rem(n,2),[])
    |> Enum.map(&(Integer.to_charlist( &1)))
    |> Enum.join("->")

  end

    defp collatz(1,_,output) do
      output ++ [1]
    end

  defp collatz(n,0,output) do
    n1 = Kernel.trunc(n/2 )
    collatz(n1,rem(n1,2), output ++ [n] )
  end

  defp collatz(n,1,output)   do
      n1 = Kernel.trunc((3*n)+1)
      collatz( n1 ,rem(n1,2) , output ++ [n] )
  end

end
