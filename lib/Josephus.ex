defmodule Josephus do
  def survivor(n, k) do
    # TODO

    # IO.inspect "Ruthraiah"

    # values =
    IO.inspect n
    IO.inspect k
    # # IO.inspect "Ruthraiah: #{n}"
    # IO.inspect Range.new(1,n)
    # IO.inspect Enum.to_list( Range.new(1,n))
    # survivorp(Enum.to_list( Range.new(0,n)) ,k)



#list = Enum.with_index ( Enum.to_list( Range.new(1,n)))

list = Enum.to_list( Range.new(1,n))

IO.inspect list

 # Enum.reduce  list, [], fn([head | tail ], acc) ->
 #    IO.inspect head
 #  end

 Enum.reduce list, [100], fn(temp, acc) ->
   IO.inspect " temp : #{temp} , k : #{k}, rem : #{rem( temp , k)} "
   IO.puts "list is #{acc}"
    if rem( temp , k) == 0 do
        [acc]
     else
        [ acc | temp]
    end
    IO.inspect  "acc"
     IO.inspect  acc
 end
 |> IO.inspect

# |> IO.inspect

#survivorp(Enum.into 1..{n},k)


    # IO.inspect values
    # IO.inspect k

    # Enum.drop_every(values, k)
    #
    # Stream.cycle(values)

#Enum.each Stream.cycle(values), &IO.puts(&1)

  end
#
# def survivorp(n, _) when length(n)  == 1 do
#    IO.inspect "My n is #{n}"
#    IO.inspect Enum.at( n , 0)
#    Enum.at( n , 0)
# end
#
# def survivorp(n, k) when length(n) > 1 do
#   IO.inspect "survivorp : #{n} "
#   Enum.each(n, fn(x) -> IO.puts x end)
#    survivorp(  Enum.drop_every([0|n], k), k)
# end

end
