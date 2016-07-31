require_relative 'game'

describe Game do

	let(:game) {Game.new("Apple")}	

	it 'initializes proper gameboard' do
		game.print_board.should == "_ _ _ _ _ "
	end

	it 'distinguishes letter' do
		game.is_letter?('a').should == 0
	end

end