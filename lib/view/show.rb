class Show
	attr_accessor :board

	def initialize
	end

  def show_board(board)
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
    puts " " * 4 + "1" + " " * 3 + "2" + " " * 3 + "3"
    puts "-"* 15
    puts "A | "+ board.ary_boardcase[0].symbol + " | "+ board.ary_boardcase[1].symbol + " | "+ board.ary_boardcase[2].symbol + " |"
    puts "-"* 15
    puts "B | "+ board.ary_boardcase[3].symbol + " | "+ board.ary_boardcase[4].symbol + " | "+ board.ary_boardcase[5].symbol + " |"
    puts "-"* 15
    puts "C | "+ board.ary_boardcase[6].symbol + " | "+ board.ary_boardcase[7].symbol + " | "+ board.ary_boardcase[8].symbol + " |"
    puts "-"* 15
  end

end