#create a geographic map software

#create hashes for the continent containers, containing sub-hashes for the countries
asia = {

	china: {
		languages: ["mandarin", "cantonese"]
	},
	japan: {
		languages: ["japanese", "english"]
	}

}


north_america = {

	usa: {

		languages: ["english", "spanish"],
		president: "barack obama",

		north_east: {
			states: ["new york", "maine", "deleware"]
		},

		west_coast:{
			states: ["california", "washington", "oregon"]
		}
	},

	mexico: {
		languages:["spanish"],
		president: "enrique peña nieto"
	},

	canada: {
		languages:["english", "french"],
		prime_minister: "justin trudeau"
	}

}

#create a world container of the continents
world = [asia, north_america]

#print china's languages
puts "China's languages: " + world[0][:china][:languages].to_s

#print the first state on the west coast
puts "The first state on the west coast: " + world[1][:usa][:west_coast][:states][0]

#print mexico's president
puts "Mexico's president: " + world[1][:mexico][:president]

#this is a specific getter I removed in favor of a general attribute one
=begin
	def get_languages(planet, continent, country)

		return "Planet doesn't exist" if !planet
		return "Continent doesn't exist" if !planet.include? continent
		return "Country doesn't exist" if !continent.has_key? (country.to_sym)
		return "Languages not registered" if !continent[country].has_key? :languages

		return "languages: " + continent[country][:languages].join(", ")	
	end
=end

def get_attribute(planet, continent, country, attribute)

	return "Planet doesn't exist" if !planet
	return "Continent doesn't exist" if !planet.include? continent
	return "Country doesn't exist" if !continent.has_key? (country.to_sym)
	return "#{attribute} not registered" if !continent[country].has_key? attribute.to_sym

	return "#{attribute}: " + continent[country][attribute.to_sym].join(", ")	
end

#puts get_languages(world, asia, :china)
puts get_attribute(world, asia, :china, :languages)

