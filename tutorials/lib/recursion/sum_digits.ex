defmodule Tutorials.Recursion.SumDigits do
  def upto(0), do: 0

  def upto(num) do
     num + upto(num-1)
  end


  # Spacing is very important in do: acc line
  # Here we are giving a default value of zero to the accumulator incase the accumulator value isn't provided by user
  def upto_tail_rec(num,acc \\ 0)
  def upto_tail_rec(0,acc), do: acc



# Tail recursive functions use less memory because we are simply reusing the same stack because elixir is a functional programming language and hence the function calls are highly optimized unlike in java and python where new memory is allocated for every method call
  def upto_tail_rec(num,acc) do
    upto_tail_rec(num-1, acc + num)
  end
end
# Start iex using iex command
# Load the ex file using c("sum_digits.ex") command
