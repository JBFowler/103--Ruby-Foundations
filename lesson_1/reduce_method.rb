def reduce(array, start = 0)
  counter = 0
  total = start

  while counter < array.size
    current_value = array[counter] # The first two lines could simply be written as: total = yield(total, array[counter])
    total = yield(total, current_value)
    counter += 1
  end

  total
end

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }
p reduce(array, 10) { |acc, num| acc + num }
p reduce(array) { |acc, num| acc + num if num.odd? }