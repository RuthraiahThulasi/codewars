defmodule CandidateCode do

# read input from stdio
  def main() do
      IO.stream(:stdio ,:line)
      |> checkWin()
  end

# main logic , 
# drop the first line
  def checkWin(stream) do
    try do
        stream
        |> Stream.drop(1)
        |> Stream.map(&String.trim/1)
        |> Stream.chunk(3)
        |> Stream.map(&get_play_outcome(&1))
        |> Stream.map(&IO.inspect(&1))
        |> Stream.run
      catch
      x -> "Got #{x}"
    end
  end

#read input from test file
  def checkFileWin() do
      "./candidate_code_input.txt"
      |> File.stream!
      |> checkWin()
  end

# prepare the inputs list 
  defp get_play_outcome([ _,villians_strength,player_energy])  do
    get_play_outcome( 
      get_sort_list(villians_strength),
      get_sort_list(player_energy),
      false)
  end

# compare the data
  defp get_play_outcome( [v_head | v_tail],[p_head | p_tail]  , _result)  do
    case p_head >= v_head  do
        true -> get_play_outcome(v_tail, p_tail, true)
        _ -> false
    end
  end

# returns the final results 
  defp get_play_outcome([],[], final_result )  do
    final_result
  end

# get the sorted list 
  defp get_sort_list(input) do
    input
    |> String.split(" ")
    |> Enum.map(&String.to_integer(&1))
    |> Enum.sort()
  end
end