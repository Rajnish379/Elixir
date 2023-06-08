defmodule Tutorials.Lists do
  # All the functions present here are called named functions because all these functions are associated with a module
  @moduledoc """

  Function Summary:

  1. sum
  """

  @doc """
  Returns the sum of numbers in a list
  """ # Documentation
  @spec sum(list(number())) :: number() #Specification
  def sum(nums), do: sum_tail_rec(nums)

  @spec sum_simple(list(number())) :: number() #Specification
  def sum_simple([]), do: 0
  def sum_simple([h | t]), do: h+sum_simple(t)

  @spec sum_tail_rec(list(number()),integer()) :: number() #Specification
  def sum_tail_rec(nums,acc \\ 0)
  def sum_tail_rec([],acc), do: acc
  def sum_tail_rec([h | t],acc), do: sum_tail_rec(t,acc+h)

  # ________________________ Reverse ________________________#
  # list(any()) and [any()] both mean the same type
  @spec reverse(list(any()),[any()]) :: [any()]
  def reverse(elements,acc \\ [])
  def reverse([], acc), do: acc
  def reverse([h | t],acc), do: reverse(t,[h | acc])

  # ________________________ Map _____________________________#

  @spec map([any()],(any() -> any()), [any()]) :: [any()]
  def map(elements,func,acc \\ [])
  def map([], _, acc), do: reverse(acc)
  def map([h | t],func,acc), do: map(t,func,[func.(h) | acc])

  #________________________ Concat ____________________________#

  #[1,2,3]|> [] [1,2,3,4,5,6]
  @spec concat([any()],[any()]) :: [any()]
  def concat(src,dst), do: concat_func(src |> reverse(),dst)

  # defp makes this function a private function cause this is designed for internal use only and won't be reused much anywhere else
  def concat_func([],dst), do: dst
  def concat_func([h | t],dst), do: concat_func(t,[h | dst])

  #__________________________ FlatMap __________________________#
  def flat_map(elements,func,acc \\ [])
  def flat_map([],_,acc), do: acc
  def flat_map([h | t],func,acc), do: flat_map(t,func,concat(acc,func.(h)))

end
