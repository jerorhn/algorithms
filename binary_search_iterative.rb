def binary_search_iterative(collection, value)
	low = 0
	high = collection.length - 1
	
	while low <= high
		mid = (low + high) / 2
		
		if collection[mid] > value
			high = min - 1
		elsif collection[mid] < value
			low = min + 1
		else
			return mid
		end
	end
	return nil
end