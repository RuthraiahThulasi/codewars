defmodule CamelCase do

  def to_camel_case(str) do

    Regex.split(~r/-|[_]/, str)
    |> Enum.with_index
    |> Enum.map( fn {str,index} ->
       case index do
         0 -> str
         _ -> String.capitalize(str)
      end
    end)
    |> Enum.join()

  end
  
end
