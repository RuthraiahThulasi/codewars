defmodule CamelCase do

  defp to_camel_case(str , index) when index ==0 do
     str
  end

  defp to_camel_case(str , _ )  do
    String.capitalize(str)
  end

  def to_camel_case(str) do

    Regex.split(~r/-|[_]/, str)
    |> Enum.with_index
    |> Enum.map( fn {str,index} ->
        to_camel_case(str,index) end)
    |> Enum.join()
  
  end
end
