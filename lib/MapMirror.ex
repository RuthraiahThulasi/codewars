# defmodule MapMirror do
#   def mirror(map) do
#     result = Map.new
#      #IO.inspect ( map )
#      #IO.inspect "result"
#      #IO.inspect map
#
#       Enum.each  map,  fn {k, _} ->
#         #IO.puts "key --> #{k}"
#
#         case k do
#             is_binary(k) -> Map.put_new(result, k, String.reverse(k))
#              is_atom(k) -> Map.put_new(result, k,  String.reverse( Atom.to_string(k)))
#             true -> Map.put_new(result, k, Enum.reverse(k))
#         end
#       end
#   end
# end
