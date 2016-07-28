class Santa
	
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(name)
		if(@reindeer_ranking.include?(name))
			@reindeer_ranking.delete_at(@reindeer_ranking.index(name))
			@reindeer_ranking.push(name)
		end
	end

	#setter methods
	def gender=(new_gender)
		@gender = new_gender
	end

	#getter methods
	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

end

#initialize a container to store santa objects
santas = []

#two arrays of available genders and ethnicities
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#create 10 santa instances, each with random gender and ethnicity
10.times do 
	santas << Santa.new(genders[Random.rand(genders.length)], ethnicities[Random.rand(ethnicities.length)])
end

p santas