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