require_relative '../Connect_four'

RSpec.describe Board do 
	let(:board) { Board.new }

	it 'starts empty' do 
		expect(board.instance_variable_get(:@grid).flatten.all?{ |c| c == " "}).to be true
	end
end