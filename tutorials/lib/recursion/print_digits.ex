# exs files are not meant for production deployment. They are basically your elixir script files
defmodule Tutorials.Recursion.PrintDigits do
  # Base Case
  def upto(0), do: 0
    # num 3 -> 0, 1, 2, 3
    # for (i=0;i<= num;i++) print(i)
    # The above for loop doesn't work in elixir because in elixir the variables are immutable but in our case we are changing the value of i everytime we are incrementing it in our for loop. Hence in elixir for loops are not possible. So let's think of a way to do this using recursion


  def upto(num) do
    # Ascending Stage execution of print statement
    # Tail Recursion
    #IO.inspect(num)
    # upto(num-1)
    # Return stage execution of print statement
    # Head Recursion
    upto(num-1)
    IO.inspect(num)
  end


end

Tutorials.Recursion.PrintDigits.upto(10)
