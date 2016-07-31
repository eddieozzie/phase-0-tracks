class Puppy

	def initialize
		puts "Initializing new puppy instance ..."
	end

	def fetch(toy)
		puts "I brough back the #{toy}!"
		toy
	end

	def speak(times)
		times.times {puts "Woof!"}
	end

	def rollover
		puts "**rolls over**"
		"**rolls over**"
	end

	def dog_years(human_years)
		puts human_years/10.5
		human_years/10.5
	end

	def run(location)
		puts "Ran to #{location}"
	end
	
end

puppy = Puppy.new

puppy.fetch("ball")
puppy.speak(4)
puppy.rollover
puts puppy.dog_years(40)
puppy.run("park")

class Cat
	
	def initialize(color,breed)
		@color=color
		@breed=breed
	end
	
	def purr(times)
		times.times {puts "**purrs**"}
	end
	
	def angry
		puts "Don't touch me!"
	end

	def about
		"I am a #{@color} #{@breed} cat."
	end

end

#create an empty array container to hold cat instances
cats = Array.new

#create containers for possible colors and breeds
colors = ["brown", "black", "white"]
breeds = ["a", "b", "c"]

#create fifty cats of random color and breed
50.times do 
	cat = Cat.new(colors[Random.rand(colors.length)], breeds[Random.rand(breeds.length)])
	cats.push(cat)
end

#perform some operations on each cat instance in cats array
cats.each do |cat|
	cat.purr(Random.rand(5) + 1) 
	cat.angry
	puts cat.about
	puts ""
end

