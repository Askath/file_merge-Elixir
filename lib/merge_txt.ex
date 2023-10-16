defmodule MergeTxt do
  def main(args) do
    Enum.map(args, fn args ->
      if !File.exists?(args) do
        IO.puts("File not found: #{args}")
        System.halt(1)
      end
    end)

    {newFile} =
      Enum.reduce(args, {[]}, fn args, {newFile} ->
        {newFile ++ [File.read!(args)]}
      end)

    IO.puts(newFile)
  end
end

args = System.argv()
MergeTxt.main(args)
