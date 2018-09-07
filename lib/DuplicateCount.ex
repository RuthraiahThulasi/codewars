defmodule DuplicateCount do

  def count("") do 0 end

  def count(str) do
    
    list =   str
      |> String.downcase
      |> String.graphemes
    count(list, Map.new())

  end


  defp count([ head | tail ],map) do
     letterAtom = String.to_atom( head )
     map =   case Map.has_key?(map, letterAtom) do
                true -> Map.put(map, letterAtom, Map.get(map, letterAtom) + 1 )
                false -> Map.put(map, letterAtom, 1)
              end

    count(tail,map)
  end

  defp count([],map) do
        # IO.inspect(accumulator, label: "case 0")
      map
      |> Map.values
      |> Enum.reduce(  0, fn(x, accumulator)  ->
           case x do
             0 -> accumulator
             1 -> accumulator
             _ -> accumulator + 1
           end #  case x do
        end)
  end
end
