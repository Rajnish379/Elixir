# Right space after colon is important in keyword list. Without space it will throw an error
# Parentheses are optional in elixir so that means you can call methods inside modules even without using parentheses
# But if your methods have arguments then it is better to use parentheses so the developers can understand your code better
data = [a: 1,b: 2]
IO.inspect data

IO.inspect [{:a,1}] = [a: 1]

# Retrievin the value using key in a keyword list
IO.inspect data[:a]
