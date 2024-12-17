# outer while loops, loops for (array.size - 1) times 
  
# inner .map loops, with (value and index) as parameter
# - check if at index posision, does number on the right greater or lower => do nothing if greater, swap if smaller
# - increase index position of 2 number by 1  
# => return a new array with highgest number in the last, keep looping with while loops


def bubble_sort (array)
  i = 0
  while i < (array.size - 1) do
          array.each.with_index do |item, index|
            if array[index + 1] == nil
                break
            else 
                if array[index] > array[index + 1] 
                  array[index], array[index + 1] = array[index + 1], array[index] 
                end
            end
          end
          i += 1
  end
  array
end


p bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]