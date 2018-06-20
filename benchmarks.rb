require 'benchmark'
require_relative 'fibonnaci_recursive.rb'
require_relative 'fibonnaci_sequence.rb'
require_relative 'binary_search_iterative.rb'
require_relative 'binary_search_recursive.rb'

puts Benchmark.measure {
	puts "fib recursive"
	fib_recursive(20)
}

puts Benchmark.measure {
	puts "fib iterative"
	fib(20)
}


benchmarkarr = []
for i in 0..1000000
	benchmarkarr.push(i)
end

puts Benchmark.measure {
	puts "iterative"
	binary_search_iterative(benchmarkarr, 756,486)
}

puts Benchmark.measure {
	puts "recursive"
	binary_search_recursive(benchmarkarr, 756,486)
}