list = [1,2,3]

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
      post1 = %Post{id: 1, title: "Title No 1", author: "Adheesh"}
      IO.inspect post1
      cond do
        post1.author == "Rajineesh" -> IO.inspect "Editing a post from Rajineesh"
        post1.author == "Adheesh" -> IO.inspect "Editing a post from Adheesh"
        true -> IO.inspect "This is a catch all"
      end

    end
  end

  Main.main

  cond do
    hd(list) ==1 -> IO.inspect "Got a 1"
    true -> "Head is #{hd(list)}"
  end
