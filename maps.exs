my_map = %{a: 1, b: 2,c: 3}
IO.inspect my_map

%{a: first,b: second,c: third} = my_map
IO.inspect first

%{b: secon} = my_map
IO.inspect secon

# Cannot use this notation if key is a string
IO.inspect my_map.a

map2 = %{"a" => 1, "b" => 2, "c" => 3}
IO.inspect map2

%{"c" => c} = map2
IO.inspect c

map2 = %{map2 | "c" => 4}
IO.inspect map2

my_map = %{my_map  | c: 4}
IO.inspect my_map
