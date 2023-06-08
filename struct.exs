defmodule User do
  defstruct username: "", email: "", age: nil
end


# We cannot access struct directly hence we have created a separate module and a separate method inside the module to use the struct that we have defined. This is a limitation of elixir compiler
defmodule Main do
  def main do
    user1 = %User{username: "Rajineesh", age: 22, email: "rajinish@gmail.com"}
    IO.inspect user1
    %{username: username} = user1
    IO.inspect username
    # Structs can be updated similar to maps. Here we are changing the age of user1 struct and then rebinding it to user1
    user1 = %{user1 | age: 21}
    IO.inspect user1
  end
end

Main.main
# Here defmodule and defstruct are known as macros
