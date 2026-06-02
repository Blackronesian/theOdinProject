def bubble_sort(array)
  loop do
    swapped = false

    (array.length - 1).times do |i|
      if array[i] > array[i + 1] # if the current element is greater than the next element
        array[i], array[i + 1] = array[i + 1], array[i] # swap the elements
        swapped = true # set swapped to true if a swap occurred
      end
    end

    break if swapped == false
  end

  array 
end

puts bubble_sort([6, 2, 7, 1, 4]).inspect
puts bubble_sort([5, 1, 4, 2, 8]).inspect
puts bubble_sort([3, 0, 2, 5, -1, 4, 1]).inspect
