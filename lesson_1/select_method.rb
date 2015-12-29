def select(array)
  counter = 0
  new_array = []

  while counter < array.size
    current_value = array[counter]
    new_array << current_value if yield(current_value)
    counter += 1
  end

  new_array
end

p select([1, 2, 3, 4, 5]) { |num| num.odd? }