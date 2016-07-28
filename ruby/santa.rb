class Santa
	
	attr_reader :age, :ethnicity
	attr_accessor :gender, :name

	def initialize(name, gender, ethnicity)
		puts "Initializing Santa instance..."
		@name = name
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
end

#initialize a container to store santa objects
santas = []

#two arrays of available genders and ethnicities
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
names = ["Patria", "Ashley", "Reggie", "Camille","Sachiko", "Jeannetta"]



#create 10 santa instances, each with random gender and ethnicity
10.times do 
	santas << Santa.new(names[Random.rand(names.length)],genders[Random.rand(genders.length)], ethnicities[Random.rand(ethnicities.length)])
end

santas.each do |santa|
	puts "#{santa.name} is #{santa.ethnicity}, #{santa.gender}, and is #{santa.age} years old."
end