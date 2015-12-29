def times(n)
  counter = 0
  while counter < n do
    yield(counter)
    counter += 1
  end

  n
end

times(5) do |num|
  puts num
end
