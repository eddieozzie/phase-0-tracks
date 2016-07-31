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
		@word = word.split("")
		@guess_count = word.length
		@game_over = false
	

		create_board
	end

	def create_board
		@board = Array.new(@word)
		@board.map! do |c| 
			if is_letter? c 
				"_ "
			else 
				" "
			end
		end 
	end

	def fill_board(character)
		@word.length.times do |index|

			if @word[index] == character
				@board[index] = character
			end

		end
	end


	def print_board
		print @board.join("")
	end

	def make_guess(guess)
		if check_guess(guess)
			puts "\nNice work! The letter #{guess} is here!"
			fill_board(guess)

		else
			puts "\nSorry, the letter #{guess} is not here!"
		end

		@guess_count -= 1
	end

	def check_guess(guess)
		if @word.include? guess
			true
		else
			false
		end
	end

	def update_board
	end

	def game_over?
		return true if @guess_count == 0 || won?
		false
	end

	def won?
		@game_over = true
		return true if !@board.include? "_ "
	end

	def is_letter?(char)
  		char =~ /[[:alpha:]]/
	end

	def print_stats
		puts won? ? "\nYou won!" : "\nYou lost!"
		puts "Thanks for playing! The phrase was '#{@word.join}' and you had #{@guess_count} guesses remaining"
	end

end

print "Player 1, please enter your word: "
game = Game.new(gets.chomp)

until game.game_over? do
	puts game.print_board
	print "Player 2, please enter your guess: "
	game.make_guess(gets.chomp)
end

game.print_stats

