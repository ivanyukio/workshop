defmodule Lab1 do
  def first_and_third([]), do: nil

  def first_and_third([first, _second, third | _]) do
    {first, third}
  end

  ###

  def drop_three([]), do: []

  def drop_three([_first, _second, _third | tail]) do
    tail
  end

  ###

  def sum(list, total \\ 0)

  def sum([num | tail], total) do
    sum(tail, num + total)
  end

  def sum([], total) do
    total
  end

  ###

  def find_min(list, match \\ nil)

  def find_min([num | tail], nil) do
    find_min(tail, num)
  end

  def find_min([num | tail], match) do
    new_match = cond do
      num < match ->
        num
      true ->
        match
    end

    find_min(tail, new_match)
  end

  def find_min([], match) do
    match
  end

  ###

  def average([]), do: nil

  def average(list) do
    sum(list) / get_length(list)
  end

  def get_length(list, count \\ 0)

  def get_length([_element | tail], count) do
    get_length(tail, count + 1)
  end

  def get_length([], count) do
    count
  end
end
