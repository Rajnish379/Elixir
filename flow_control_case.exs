list = [1,2,3]

case Enum.at(list,2) do
  1 -> IO.inspect "This won't print"
  3 -> IO.inspect "3 is a match"
  _ -> IO.inspect "Catch all"
end

defmodule Post do
  defstruct(
    id: nil,
    title: "",
    description: "",
    author: ""
  )
end

  defmodule Main do
    def main do
      post1 = %Post{id: 1, title: "Title No 1", author: "Julius Caesar"}
      IO.inspect post1
      case post1 do
        %{author: "Rajineesh"} ->IO.inspect "Got a post from Rajineesh"
        %{author: "Anli Kulkarni"} -> IO.inspect "Got a post from Anil"
        _ -> IO.inspect "Got a post from #{post1.author}"
      end
      post1 = %{post1 | author: "Adheesh"}
      IO.inspect post1
    end
  end

  Main.main
