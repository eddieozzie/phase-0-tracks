DEFINITELY = 3
PROBABLY = 2
PROBABLY_NOT = 1
INCONCLUSIVE = 0

puts "How many employees will be processed?"
employees = gets.chomp.to_i

def verify_birthdate (current_year, birth_date, age)
	if current_year - birth_date == age
		true
	else 
		false
	end
end

def is_a_vampire? 

	name = nil
	age = nil
	year = nil
	garlic = nil
	health_insurance = nil
	allergy = nil

	#maps to macro results at top of file
	result = -1

	puts "What is your name?"
	name = gets.chomp

	puts "How old are you? (in years)"
	age = gets.chomp.to_i

	puts "What year were you born?"
	year = gets.chomp.to_i

	age = verify_birthdate(2016, year, age)

	loop do
		puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
		garlic = gets.chomp.downcase
		break if garlic == "y" || garlic == "yes" || garlic == "n" || garlic == "no"
	end


	if(garlic == "y" || garlic == "yes")
		garlic = true;
	elsif (garlic == "n" || garlic == "no")
		garlic = false;
	end

	loop do
		puts "Would you like to enroll in the company’s health insurance? (y/n)"
		health_insurance = gets.chomp.downcase
		break if health_insurance == "y" || health_insurance == "n" || health_insurance == "yes" || health_insurance == "no"
	end

	if(health_insurance == "y" || health_insurance == "yes")
		health_insurance = true;
	elsif (health_insurance == "n" || health_insurance == "no")
		health_insurance = false;
	end

	if age && (garlic || health_insurance)
		result = PROBABLY_NOT
	end
	if !age && (!garlic || !health_insurance)
		result = PROBABLY
	end
	if !age && !garlic && !health_insurance 
		result = DEFINITELY
	end
	if name == "Drake Cula" || name == "Tu Fang"
		result = DEFINITELY
	end
	if result == nil
		result = INCONCLUSIVE
	end

	loop do 
		puts "Enter an allergy or type 'done' to exit: "
		allergy = gets.chomp.downcase
		if allergy == "sunshine"
			return PROBABLY
			break
		end
		break if allergy == "done"	
	end

	return result

end

until employees == 0

	vampire = is_a_vampire?

	if(vampire == DEFINITELY)
		puts "Definitely a vampire"
	elsif(vampire == PROBABLY)
		puts "Probably is a vampire"
	elsif(vampire == PROBABLY_NOT)
		puts "Probably not a vampire"
	else
		puts "Inconclusive"
	end
	
	employees -=1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."