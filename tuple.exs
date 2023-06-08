{a,b} = {1,2}
IO.inspect(a)

{:reply, msg, state} = {:reply, "Rajineesh Reddy",["Raj","Adi","Shyam"]}
IO.puts(msg)
IO.puts(state)
# inspect method pretty prints the list so use inspect instead of puts while specifically printing lists or tuples
IO.inspect(state)


