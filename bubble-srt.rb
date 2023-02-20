def bubble_sort(array)
    array_lenght = array.size
    return array if array_lenght <= 1

    loop do
        swapped = false
        (array_lenght-1).times do |i|
            if array[i] > array[i+1]
            array[i], array[i+1] = array[i+1], array[i]
            swapped = true
            end
        end

        break if not swapped
    end

    array
end

unsorted_array = [4,3,78,2,0,2]
p bubble_sort(unsorted_array)

#take an array as a parameter
#return the original array if it has zero or none element since it will already be sorted
#look iterate through the array and compare each element with the next one
#set swapped to false, so the program will know when to exit the loop
#inside the nested iterator, compare the elements at array[i] and array[i+1], if the second is greater than the first one, it will swap the values
#the nested iterator will continue to loop (array_length-1).times
#the loop will end when the itertor can move through all elements and NOT have to swap
#finally the sorted array is returned