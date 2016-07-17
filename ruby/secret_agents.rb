#method is passed a plain-text string
#create marker that indexes to zero
#create a while loop that starts at marker, incrementing by 1 each time
#in loop, access character at string's marker index
#apply next method to increment character's value by 1
#return the modified string

#Encrypts the given text, moving each character's position to the right and wrapping around if needed
def encrypt(original_text)

	marker = 0
	string_length = original_text.length
	
	while (marker < string_length)
		
		if(!(original_text[marker] == " ") && !(original_text[marker] ==  "z"))
			original_text[marker] = original_text[marker].next
		elsif original_text[marker] == "z"
			original_text[marker] = "a"
		end

		marker += 1

	end

	original_text

end

#puts encrypt("abc")
#puts encrypt("zed")


#create a string containing the entire alphabet, to be used as a map
#create a marker that indexes to zero (to be used to keep track of the current position in the string)
#create a while loop that iterates through the given string
#in loop, access character at string's marker index
#using the index method, find the string's marker index's character position in the alphabet
#subtract one from that position
#find the corresponding letter to that subtracted position
#insert that letter into the original string

#Decrypts the given text, moving each character's position to the left and wrapping around if needed
def decrypt(original_text)

	alphabet = "abcdefghijklmnopqrstuvwxyz"

	marker = 0

	while(marker < original_text.length)

		if original_text[marker] == "a"
			original_text[marker] = "z"

		elsif (!(original_text[marker] == " "))
			alpha_index = alphabet.index(original_text[marker])
			alpha_index -= 1
			original_text[marker] = alphabet[alpha_index]
		
		end

		marker += 1

	end

	original_text

end

#puts decrypt("bcd")
#puts decrypt("afe")

#This method works because first it encrypts 'swordfish' (increases each character's index by 1)
#and then when we decrypt it, the encrypted string's characters' indexes are decreased by 1
#So there is no net effect — the two methods 'cancel' each other out

#puts decrypt(encrypt("swordfish"))


#DRIVER CODE - RELEASE 5
#Prompt the user to see whether they want to encrypt or decrypt
#Request a password
#Perform the desired method
#Print the results
#Exit

puts "Would you like to encrypt or decrypt?"
answer = gets.chomp.downcase

puts "What is the password?"
password = gets.chomp


if answer == "encrypt"
	puts encrypt(password)
elsif answer == "decrypt"
	puts decrypt(password)
else
	puts "I didn't understand!"
end


