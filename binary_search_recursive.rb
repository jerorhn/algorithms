def binary_search_recursive(collection, value, low = 0, high = collection.length - 1)
	mid = (low + high) / 2
	if low <= high
		if collection[mid] > value
			binary_search(collection, value, low, mid - 1)
		elsif collection[mid] < value
			binary_search(collection, value, mid + 1, high)
		else
			return mid
		end
	else
		return nil
	end
end