defmodule People do
  def list(people) do
    listp(people,"")
  end

  defp listp([], out ) do
    # IO.inspect "[].out : #{out}"
    out
  end

  defp listp( list ,out) when length(list) == 1 do
    # IO.inspect "out : #{out}"
    [ head | tail ] = list
    if(byte_size(out)==0) do
      listp( tail ,"#{head.name}")
    else
        listp( tail ,"#{out} & #{head.name}")
    end
  end


  defp listp( list , out)  when length(list) >= 2 do
    [ head | tail ] = list

    if(byte_size(out)==0) do
      listp( tail ,"#{head.name}")
    else
        listp( tail ,"#{out}, #{head.name}")
    end
  end

end
