name = "Rajineesh"
IO.puts(name)

IO.puts(is_binary(name))

msg = "Hello " <> name
IO.puts(msg)

# <> is the string concatenation operator
# It pattern matches "Hello " part in the msg string and puts the rest of the msg string into the name variable
"Hello " <> name = msg
IO.puts(name)

<<head,rest::binary>> = name
IO.puts(head)

IO.puts(head == ?R)

<<"R",rest::binary>> = name
IO.puts(rest)

<<"Ra",rest::binary>> = name
IO.puts(rest)

# Getting the first two characters of name inside head by mentioning the binary size of 2
<<head::binary-size(2),rest::binary>> = name
IO.puts(head)
