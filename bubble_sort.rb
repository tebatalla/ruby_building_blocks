def bubble_sort(arr)
	elements_left_to_sort = arr.length - 1
	is_sorted = false
	until is_sorted || elements_left_to_sort == 0
		index = 0
		is_sorted = true
		while index < elements_left_to_sort
			if arr[index] > arr[index+1]
				swap = arr[index+1]
				arr[index+1] = arr[index]
				arr[index] = swap
				is_sorted = false
			end
			index += 1
		end
		elements_left_to_sort -= 1
	end
	return arr
end

def bubble_sort_by(arr)
	elements_left_to_sort = arr.length - 1
	is_sorted = false
	until is_sorted || elements_left_to_sort == 0
		index = 0
		is_sorted = true
		while index < elements_left_to_sort
			if yield(arr[index],arr[index+1]) < 0
				swap = arr[index+1]
				arr[index+1] = arr[index]
				arr[index] = swap
				is_sorted = false
			end
			index += 1
		end
		elements_left_to_sort -= 1
	end
	return arr
end