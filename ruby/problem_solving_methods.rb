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

#if n1 > n2, switch n1 with n2, if n3 

#	6 5 7 5 3 2 5 75 32 

#Define a method that takes an array as an argument.
#Within method create a code block that goes through the method as many time as its' length.
#Have code block compare the current index with the next index.
#Swap indexs if out of place.


def bubble_sort(arr)

	arr.length.times do |iteration|
		
		(arr.length - 1).times do |index| 

			if arr[index] > arr[index + 1]
				temp = arr[index]
				arr[index] = arr[index + 1]
				arr[index + 1] = temp
			end
		end
	end
	arr
end	

arr = [42, 89, 23, 1]
p bubble_sort(arr)



