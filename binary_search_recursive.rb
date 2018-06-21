def binary_search_recursive(collection, value, low = 0, high = collection.length - 1)
	mid = (low + high) / 2
	if low <= high
		if collection[mid] > value
			binary_search_recursive(collection, value, low, mid - 1)
		elsif collection[mid] < value
			binary_search_recursive(collection, value, mid + 1, high)
		else
			return mid
		end
	else
		return nil
	end
end


search = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts binary_search_recursive(search, 8)
puts binary_search_recursive(search, 0)
puts binary_search_recursive(search, 10)
puts binary_search_recursive(search, 11)
puts binary_search_recursive(search, 3)
