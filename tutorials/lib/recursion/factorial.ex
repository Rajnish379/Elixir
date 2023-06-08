defmodule Tutorials.Recursion.Factorial do
  def fact(0), do: 1

  def fact(num) do
    num * fact(num-1)
  end

  def fact_tail_rec(num,acc \\ 1)
  def fact_tail_rec(1,acc), do: acc

  def fact_tail_rec(num,acc), do: fact_tail_rec(num-1,acc*num)

end
