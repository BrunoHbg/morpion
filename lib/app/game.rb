require_relative 'board'
require 'view/show'
require_relative 'player'

class Game

  attr_accessor :current_player, :status, :ary_player, :board

  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    @player_1 = Player.new
    @player_2 = Player.new
    @ary_player = [@player_1, @player_2]
    @status = 'on going'

    if @player_1.player_symbol == @player_2.player_symbol
      puts "J'ai modifié votre symbole car il était identique"
      if @player_1.player_symbol == 'X'
        @player_2.player_symbol = 'O'
      elsif @player_1.player_symbol == 'O'
        @player_2.player_symbol = 'X'
      end
    end

    @player_1.show_state
    @player_2.show_state
    @board = Board.new
    Show.new.show_board(@board)
  end


  def turn
    i=0
    while status == 'on going' && i<9
      @current_player = @ary_player[i%2]
      @board.play_turn(@board, @current_player)

      Show.new.show_board(@board)

      if @board.victory?(@board)
        @status = 'winner'
        break
      end

      i+=1
    end
  end
  

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    if @status == 'on going'
      puts "Match nul"
    elsif @status == 'winner'
      puts "Bravo #{@current_player.player_name}, tu remportes la partie"
    end      
  end    

end
