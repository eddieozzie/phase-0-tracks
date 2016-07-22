#create a geographic map software

#create hashes for the containers, containing sub-hashes for the countries
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
		president: "enrique peña nieto"
	},

	canada: {
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

