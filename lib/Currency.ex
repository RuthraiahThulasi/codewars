defmodule Currency do

  def make_change(amount) when amount == 0 do
   %{}
  end

  def make_change(amount) when amount > 0 do
      make_change_p(amount, %{H: 50, Q: 25, D: 10, N: 5, P: 1} , [:H, :Q, :D, :N, :P] , Map.new)
  end

  def make_change_p(amount,_currency_mapping, [] , result) when amount == 0 do
    result
  end

  def make_change_p(amount,currency_mapping, [head|tail] , result) when amount > 0 do

     currency_value = Map.get( currency_mapping , head);
     div_value = div(amount, currency_value);

      if(div_value == 0 ) do
          make_change_p(amount, currency_mapping , tail ,result )
      else
           make_change_p(rem(amount, currency_value), currency_mapping ,
                  tail , Map.merge(result ,%{ "#{head}":  div_value})  )
  end
  end
end
