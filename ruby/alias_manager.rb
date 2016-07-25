#prompt user to enter his first and last name
#split the input into an array, with one element as the first name and the other the last
#switch the location of the two elements

#reverses the elements at the indexes provided in the array provided (ie. the first and last name)

def switch_elements(arr, first_index, second_index)
	temp = arr[first_index]
	arr[first_index] = arr[second_index]
	arr[second_index] = temp
	arr
end

def shift_vowels(word)
	vowels = "aeiou"
	word.length.times do |index|
		if vowels.include? word[index]
			#variable found, switch
			current_index = vowels.index(word[index])
			new_index = (current_index + 1) % 4
			word[index] = vowels[new_index]
		end

	end
	word
end

def shift_consonants(word)
	consonants = "abcdefghijklmnopqrstuwxyz".tr("aeiou", '')
	word.length.times do |index|
		if consonants.include? word[index]
			#variable found, switch
			current_index = consonants.index(word[index])
			new_index = (current_index + 1) % 4
			word[index] = consonants[new_index]
		end

	end
	word
end

def print_agents_directory(directory)
	directory.each do |name, coded_name|
		puts "Agent #{name} is actually #{coded_name}"
	end
end


agents_directory = {

}

loop do 
	#collect users inputs, storing the first and last name as separate elements in a collection
	puts "Please enter your first and last name (type 'quit' to quit)"
	original_name = gets.chomp
	break if original_name == 'quit'

	#reverse the array 
	coded_name = original_name.split(" ")
	coded_name = switch_elements(coded_name, 0, 1)
	coded_name[0] = shift_vowels(coded_name[0])
	coded_name[1] = shift_vowels(coded_name[1])
	coded_name[0] = shift_consonants(coded_name[0])
	coded_name[1] = shift_consonants(coded_name[1])

	puts coded_name.join(" ")

	agents_directory[original_name.to_sym] = coded_name.join(" ")

end

print_agents_directory(agents_directory)




