def search_array(arr, n)
 	arr.length.times {|index| puts index if n == arr[index] }
end

#arr = [42, 89, 23, 1]
#search_array(arr, 1)

def fib(size)

	arr = [0, 1]

	size -= 2
	size.times do |index|
		index +=2
		#access the previous element and add it to the present element
		arr[index] = arr[index - 1] + arr[index - 2]

	end	

	arr.last

end


puts fib(100) == 218922995834555169026