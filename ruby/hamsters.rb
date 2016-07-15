puts "What is the hamster's name?"
hamster_name = gets.chomp

if hamster_name.empty? 
	name = nil
	puts "What is the hamster's squeaking volume? (1-10)"
	squeaking = gets.chomp.to_i

	puts "What is the hamster's fur color?"
	fur_color = gets.chomp

	puts "Is the hamster good for adoption? (y/n)"
	adoption = gets.chomp.downcase

	puts "What is the hamster's estimated age?"
	age = gets.chomp.to_f

else
	puts "What is #{hamster_name}'s squeaking volume?"
	squeaking = gets.chomp.to_i

	puts "What is #{hamster_name}'s fur color?"
	fur_color = gets.chomp

	puts "Is #{hamster_name} good for adoption? (y/n)"
	adoption = gets.chomp.downcase

	puts "What is #{hamster_name}'s estimated age?"
	age = gets.chomp.to_f
end



if squeaking == 0 
	squeaking = nil
end

if adoption == 'yes' || adoption == 'y'
	adoption = true;
elsif adoption == 'no' || adoption == 'n'
	adoption = false; 
else
	adoption = nil; 
end

if age == 0
	age = nil
end

if hamster_name != nil
	puts "Name: #{hamster_name}"
else
	puts "Name: Need hamster name"
end

if squeaking < 10 && squeaking != nil
	puts "Squeaking Volume: #{squeaking}"
else 
	puts "Need valid squeaking volume (1..10)"
end

if fur_color != nil
	puts "Fur color: #{fur_color}"
else 
	puts "Need fur color"
end

if adoption
	puts "Adoptable: Yes"
elsif !adoption
	puts "Adoptable: No"
else
	puts "Need more info"
end

if age != nil 
	puts "Hamster Age: #{age}"
else 
	puts "Need age" 
end





