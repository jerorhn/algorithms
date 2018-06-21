def binary_search_iterative(collection, value)
	low = 0
	high = collection.length - 1

	while low <= high
		mid = (low + high) / 2

		if collection[mid] > value
			high = mid - 1
		elsif collection[mid] < value
			low = mid + 1
		else
			return mid
		end
	end
	return nil
end


search = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts binary_search_iterative(search, 8)
puts binary_search_iterative(search, 0)
puts binary_search_iterative(search, 10)
puts binary_search_iterative(search, 11)
puts binary_search_iterative(search, 3)
