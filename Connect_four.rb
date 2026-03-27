class Board
 ROWS = 6
 COLS = 7

 def initialize
 	@grid =Array.new(ROWS){ Array.new(COLS, " ")}
 end
 def display
 	puts "\n"
 	@grid.each do |row|
 		puts row.join(" ")
 	end
 	puts (0...COLS).to_a.join(" ")
 	puts "\n"
 end

def drop_piece(col, piece)
	row = (ROWS - 1).downto(0).find { |r| @grid[r][col] == " " } 
	if row 
		@grid[row][col] = piece 
		true
	else
		false
	  end
   end
end

board = Board.new
players =["X", "O"]
turn = 0

loop do 
	board.display
	player = players[turn %2]
	puts "Player #{player}, choose a column (0-6):"
	col = gets.chomp.to_i

	if board.drop_piece(col, player)
		turn += 1
	else
		puts "Column full! Try Again."
	end
end