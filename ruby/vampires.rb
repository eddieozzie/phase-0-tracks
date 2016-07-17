puts "What is your name?"
name = gets.chomp

puts "How old are you? (in years)"
age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i


loop do
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic? = gets.chomp.downcase
	break if garlic? == "y" || garlic? == "yes" || garlic? == "n" || garlic? == "no"
end


if(garlic? == "y" || "yes")
	garlic? = true;
elsif (garlic? == "n" || "no")
	garlic? = false;
end


puts "Would you like to enroll in the company’s health insurance? (y/n)"
health_insurance? = gets.chomp.downcase
