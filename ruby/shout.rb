module Shout

	def yell_angrily(words)
	    words + "!!!" + " :("
	end

	def yell_happily(words)
		words + "!!!" + " : )"
	end

end

class Grandpa
	include Shout
end

class Pelican 
	include Shout
end

joe = Grandpa.new()
puts joe.yell_angrily("Get off my lawn")
puts joe.yell_happily("I just won the lottery")

squeal = Pelican.new()
puts squeal.yell_angrily("He stole my fish")
puts squeal.yell_happily("I just caught some tuna")