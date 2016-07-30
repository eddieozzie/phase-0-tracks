#ask player #1 for a phrase

#assign player 2 a fixed number of guesses (equal to length of phrase)
#create a "board" for player 2

#ask player 2 for his first guess	
	#if the character is included in the phrase, fill the board with the matching characters
		#deduct one guess
		#if board is complete, player 2 wins - end game
	#if the character is not included in the phrase, just deduct one guess from player 2 budget

#continue asking player 2 for guesses until either he wins or runs out of guesses
#print out stats at end — what word was, # of guesses used, etc.

class Game

	attr_reader :word, :board, :guess_count, :game_over

	def initialize(word)
		@word = word
		@guess_count = word.length
		@game_over = false
	end

	def create_board
	end

	def ask_for_guess
	end

	def check_guess
	end

	def update_board
	end

end