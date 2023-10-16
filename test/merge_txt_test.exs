defmodule MergeTxtTest do
  use ExUnit.Case
  alias MergeTxt

  test "merge files" do
    # mock system args
    assert MergeTxt.main(["test1", "test2", "test3"]) == "test1test2test3"
  end
end
