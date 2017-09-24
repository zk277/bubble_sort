def bubble_sort (array)
  unsorted = true
  while unsorted != false
    unsorted = false
    array.each_index do |index|
      if (index+1 < array.length) && (array[index] > array[index+1])
        array[index], array[index+1] = array[index+1], array[index]
        puts "[#{array.join(', ')}]"
        unsorted = true
      end
    end
  end
  puts "The sorted array is: [#{array.join(', ')}]"
end

#my_array = [4,3,78,2,0,2,]
#bubble_sort (my_array)

def bubble_sort_by (array)
  unsorted = true
  while unsorted != false
    unsorted = false
    array.each_index do |index|
      if (index+1 < array.length) && yield(array[index], array[index+1]) > 0
        array[index], array[index+1] = array[index+1], array[index]
        puts "[#{array.join(', ')}]"
        unsorted = true
      end
    end
  end
  puts "The sorted array is: [#{array.join(', ')}]"

end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
 left.length - right.length
end
