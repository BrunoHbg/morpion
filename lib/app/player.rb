
class Player

	attr_reader :player_name , :player_symbol

	def initialize
		@player_name = gets_name 
		@player_symbol = gets_symbol
	end

	def show_state
		puts "Le joueur #{@player_name} joue avec le symbole '#{@player_symbol}'"
	end

	private

	def gets_name
		print "Comment t'appelles-tu ?"
		name = gets.chomp
	end

	def gets_symbol
		print "Avec quel symbole veux-tu jouer ? (X ou O)"
		symbol = gets.chomp.upcase
		while symbol != "X" && symbol != "O"
			puts "Erreur, tu dois choisir X ou O"
			print "Avec quel symbole veux-tu jouer ? (X ou O)"
			symbol = gets.chomp.upcase
		end
		return symbol
	end

end

