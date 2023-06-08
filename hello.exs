# Defining a module
# In elixir we always start and end code inside modules or methods with do and end
defmodule Hello do
    # Defining world method inside Hello module
    def world(name) do
        IO.puts("Hello #{name}")
    end
end

:error
{:error,reason} = {:error, "file not found"}
IO.puts(reason)


# Calling world method inside Hello module
#Hello.world()
