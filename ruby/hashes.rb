#prompt the user for the client's name, age, number of children, decor theme, etc.
#convert the user input into appropriate data
#load the data into a hash
#print out the hash data
#ask the user if they want to edit any keys
#if no, exit. if yes, edit, then exit

def log_hash_info(hash_name)
	puts "Client Name: #{hash_name[:name]}"
	puts "Client Age: #{hash_name[:age]}"
	puts "Number of Children: #{hash_name[:num_children]}"
	puts "Decor Theme: #{hash_name[:decor_theme]}"
	puts "Budget?: #{hash_name[:budget]}"
end

puts "Enter client's name: "
client_name = gets.chomp

puts "Enter client's age: "
client_age = gets.chomp.to_i

puts "Enter number of children: "
client_num_children = gets.chomp.to_i

puts "Enter decor theme: " 
client_decor_theme = gets.chomp

client_budget = nil

loop do 	
	puts "Is the client on a budget? (y/n)"
	client_budget = gets.chomp.downcase
	break if client_budget == "yes" || client_budget == "y" || client_budget == "no" || client_budget == "n"
end	

if client_budget == "yes" || client_budget == "y"
	client_budget = true
else
	client_budget = false
end

hash = {
	name: client_name,
	age: client_age,
	num_children: client_num_children,
	decor_theme: client_decor_theme,
	budget: client_budget
}

log_hash_info(hash)

loop do
	puts "Are there any keys you would like to edit? "
	key = gets.chomp

	break if key == "n" || key == "no" || key == "done"

	puts "Please enter a new value"
	new_value = gets.chomp
	key = key[1..-1] if key[0] == ":"
 	key = key.to_sym

	if hash.keys.include? key
		if key != :budget
			hash[key] = new_value
		else
			if new_value == "yes" || new_value == "y"
				hash[key] = true
			else
				hash[key] = false
			end
		end
	else
		puts "That key was not found. Please choose from the following: #{hash.keys}"
	end

end

log_hash_info(hash)


