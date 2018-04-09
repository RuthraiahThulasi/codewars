require IEx;

defmodule Directions do


  def main(args) do
   # IEx.pry
     reduce([]);
  end

  def reduce(directions) do
    reducep(directions)
  end

  defmodule Util do
    types = ~w[function nil integer binary bitstring list map float atom tuple pid port reference]
    for type <- types do
      def typeof(x) when unquote(:"is_#{type}")(x), do: unquote(type)
    end
  end


  def reducep(directions) do

:debugger.start()

  direction = %{"NORTH": 1, "SOUTH": 1, "EAST": 0, "WEST": 0}

 directions1 = [
   ["NORTH2" , "NORTH1"]
   # ,
   # ["NORTH" , "SOUTH"],
   # ["SOUTH" , "NORTH"],
   # ["EAST" , "WEST"],
   # ["WEST" , "EAST"]
 ]

  chunk_fun = fn  [head | tail], acc ->

      IO.inspect "chunk_fun.head: #{head[0]}"
      IO.inspect "chunk_fun.tail: #{tail[0]}"

    if  head[0] == tail[0]   do
        IO.inspect "head: #{head}"
        {:cont, [head], ["HEAD"]}
    else
       IO.inspect "tail: #{tail}"
       {:cont,  [ head | tail ],["TAIL"]}
    end
  end

    after_fun = fn
     # [] -> {:cont, []}
     # acc -> {:cont, acc, []}
     true -> {:cont, []}
   end



# directions1 = [[],[]]
#  stream =  Stream.chunk_while(directions1, [], chunk_fun, after_fun)
#
# Enum.to_list(stream)
# |> IO.inspect

Stream.chunk_while(directions1, [], chunk_fun, after_fun)
# |>  Stream.run()

# |>  Stream.map
# |> Stream.each(fn(x) -> IO.inspect(x) end)
#
# |>  IO.inspect

  end
end
