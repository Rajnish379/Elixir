list = ["a","b","c"]
IO.puts(list)
 # Lists in elixir are not our regular lists but they are singly linked lists
 # We have singly linked lists in elixir because singly linked lists use recursion which is very important in elixir
 # Hence we cannot access elements in elixir using indexes

 IO.puts(Enum.at(list,0))

 # Use "exports Enum" in iex to get the list of all the functions present inside the Enum module of elixir
 # Use h Enum.at in iex to get the documentation of at method in enum module of elixir. Here h is the helper function

 [first,second,third] = list
 IO.puts(second)

 # Ignoring the first two values in the list while pattern matching
 [_,_,third] = list
 IO.puts(third)

 # Returns the first element inside the list
 IO.puts(hd(list))

 # Ignores the first value and returns the rest of the list
 IO.puts(tl(list))

 [ h | t] = list
 IO.puts(h)
 IO.puts(t)
