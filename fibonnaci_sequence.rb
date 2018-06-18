def fib(n)
	fib_0 = 0
	fib_1 = 1
	
	if n === 0
		return fib_0
	elsif n === 1
	  return fib_1
	else
		for i in 0...n
			temp = fib_0
			fib_0 = fib_1
			
			fib_1 = temp + fib_1
		end
		return fib_1
	end
end

puts fib(0)
puts fib(1)
puts fib(2)
puts fib(5)
puts fib(10)