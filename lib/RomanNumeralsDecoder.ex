defmodule RomanNumeralsDecoder do

  defmodule Util do
    def typeof(self) do
        cond do
            is_float(self)    -> "float"
            is_number(self)   -> "number"
            is_atom(self)     -> "atom"
            is_boolean(self)  -> "boolean"
            is_binary(self)   -> "binary"
            is_function(self) -> "function"
            is_list(self)     -> "list"
            is_tuple(self)    -> "tuple"
            true              -> "idunno"
        end
    end
end

  defp subtractRuleValue(roman) do
    case roman do
         "I" -> 1
         "V" -> 4
         "X" -> 9
         "L" -> 40
         "C" -> 90
         "D" -> 400
         "M" -> 900
         _ -> 0
       end
  end

    defp defaultValue(roman) do
      case roman do
           "I" -> 1
           "V" -> 5
           "X" -> 10
           "L" -> 50
           "C" -> 100
           "D" -> 500
           "M" -> 1000
           _ -> 0
       end
    end

    def decode(roman) do
      decodep(String.graphemes(roman),0)
    end



    defp decodep([head | [ next | tail ]],total) do

       IO.inspect(Util.typeof(  head))
       IO.inspect ("head : #{head} ")
       IO.inspect ("next : #{next} ")
       IO.inspect ("tail : #{tail} ")
       IO.inspect ("total : #{total} ")
      
       if {head,next} in [{  "I" ,"V" } ,
                       {  "V" ,"X" } ,
                       {  "X" ,"L" } ,
                       {  "L" ,"C" } ,
                       {  "C" ,"D" } ,
                       {  "D" ,"M" } ] do

            # IO.inspect("subtractRuleValue : #{next}")
            decodep([tail], total + subtractRuleValue(next))

      else
          # IO.inspect("defaultValue : #{head}")
          decodep([next | tail], total + defaultValue (head))
       end


   end


     defp decodep([head | []],total) do
       # IO.inspect(head)
       total + defaultValue(head)
     end

    defp decodep([],total) do
      IO.inspect("finalTotal :#{total}")
     total
    end




end
