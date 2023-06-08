defmodule Tutorials.Recursion.ReverseNum do

  # num = 123
  # acc = 0
  # loop:
  # new_num = 123 / 10 = 12
  # new_acc = 0 * 10 + 123 % 10 = 3
  # repeat till num becomes 0
  # return acc

  def rev(num,acc \\ 0)
  def rev(0,acc), do: acc
  def rev(num,acc) do
    acc = acc * 10 + rem(num,10)
    num = div(num,10)
    rev(num,acc)
  end
end
