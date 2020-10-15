require_relative 'boardcase'

class Board

  attr_accessor :ary_boardcase


  def initialize
    
    @case1 = BoardCase.new("A1",'-')
    @case2 = BoardCase.new("A2",'-')
    @case3 = BoardCase.new("A3",'-')
    @case4 = BoardCase.new("B1",'-')
    @case5 = BoardCase.new("B2",'-')
    @case6 = BoardCase.new("B3",'-')
    @case7 = BoardCase.new("C1",'-')
    @case8 = BoardCase.new("C2",'-')
    @case9 = BoardCase.new("C3",'-')
    @ary_boardcase = [@case1,@case2,@case3,@case4,@case5,@case6,@case7,@case8,@case9]
  end

  def play_turn(board,current_player)
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    input_ko = true

    while input_ko
      print "#{current_player.player_name}, ton jeton est le #{current_player.player_symbol}. Quelle case veux-tu jouer ?"
      case_to_play = gets.chomp.upcase

      case case_to_play
      when "A1"
        if board.ary_boardcase[0].symbol == "-"
          board.ary_boardcase[0].symbol = current_player.player_symbol
          input_ko = false
        else 
          puts "Cette case est remplie, réessaye avec une case vide !"
        end
      when "A2"
        if board.ary_boardcase[1].symbol == "-"
          board.ary_boardcase[1].symbol = current_player.player_symbol
          input_ko = false
        else 
          puts "Cette case est remplie, réessaye avec une case vide !"
        end
      when "A3"
        if board.ary_boardcase[2].symbol == "-"
          board.ary_boardcase[2].symbol = current_player.player_symbol
          input_ko = false
        else 
          puts "Cette case est remplie, réessaye avec une case vide !"
        end
      when "B1"
        if board.ary_boardcase[3].symbol == "-"
          board.ary_boardcase[3].symbol = current_player.player_symbol
          input_ko = false
        else 
          puts "Cette case est remplie, réessaye avec une case vide !"
        end
      when "B2"
        if board.ary_boardcase[4].symbol == "-"
          board.ary_boardcase[4].symbol = current_player.player_symbol
          input_ko = false
        else 
          puts "Cette case est remplie, réessaye avec une case vide !"
        end
      when "B3"
        if board.ary_boardcase[5].symbol == "-"
          board.ary_boardcase[5].symbol = current_player.player_symbol
          input_ko = false
        else 
          puts "Cette case est remplie, réessaye avec une case vide !"
        end
      when "C1"
        if board.ary_boardcase[6].symbol == "-"
          board.ary_boardcase[6].symbol = current_player.player_symbol
          input_ko = false
        else 
          puts "Cette case est remplie, réessaye avec une case vide !"
        end
      when "C2"
        if board.ary_boardcase[7].symbol == "-"
          board.ary_boardcase[7].symbol = current_player.player_symbol
          input_ko = false
        else 
          puts "Cette case est remplie, réessaye avec une case vide !"
        end
      when "C3"
        if board.ary_boardcase[8].symbol == "-"
          board.ary_boardcase[8].symbol = current_player.player_symbol
          input_ko = false
        else 
          puts "Cette case est remplie, réessaye avec une case vide !"
        end
      else
        puts "Cette case n'existe pas !"
      end
    end
  end

  def victory? (board)
  
    # Combinaisons horizontales
    if board.ary_boardcase[0].symbol == 'X' && board.ary_boardcase[1].symbol == 'X' && board.ary_boardcase[2].symbol == "X"
      return true
    end
    if board.ary_boardcase[0].symbol == 'O' && board.ary_boardcase[1].symbol == 'O' && board.ary_boardcase[2].symbol == "O"
      return true
    end
    if board.ary_boardcase[3].symbol == 'X' && board.ary_boardcase[4].symbol == 'X' && board.ary_boardcase[5].symbol == "X"
      return true
    end
    if board.ary_boardcase[3].symbol == 'O' && board.ary_boardcase[4].symbol == 'O' && board.ary_boardcase[5].symbol == "O"
      return true
    end
    if board.ary_boardcase[6].symbol == 'X' && board.ary_boardcase[7].symbol == 'X' && board.ary_boardcase[8].symbol == "X"
      return true
    end
    if board.ary_boardcase[6].symbol == 'O' && board.ary_boardcase[7].symbol == 'O' && board.ary_boardcase[8].symbol == "O"
      return true
    end

    # Combinaise verticales 
    if board.ary_boardcase[0].symbol == 'X' && board.ary_boardcase[3].symbol == 'X' && board.ary_boardcase[6].symbol == "X"
      return true
    end
    if board.ary_boardcase[0].symbol == 'O' && board.ary_boardcase[3].symbol == 'O' && board.ary_boardcase[6].symbol == "O"
      return true
    end
    if board.ary_boardcase[1].symbol == 'X' && board.ary_boardcase[4].symbol == 'X' && board.ary_boardcase[7].symbol == "X"
      return true
    end
    if board.ary_boardcase[1].symbol == 'O' && board.ary_boardcase[4].symbol == 'O' && board.ary_boardcase[7].symbol == "O"
      return true
    end
    if board.ary_boardcase[2].symbol == 'X' && board.ary_boardcase[5].symbol == 'X' && board.ary_boardcase[8].symbol == "X"
      return true
    end
    if board.ary_boardcase[2].symbol == 'O' && board.ary_boardcase[5].symbol == 'O' && board.ary_boardcase[8].symbol == "O"
      return true
    end

      #combinaisons diagonales
    if board.ary_boardcase[0].symbol == 'X' && board.ary_boardcase[4].symbol == 'X' && board.ary_boardcase[8].symbol == "X"
      return true
    end
    if board.ary_boardcase[0].symbol == 'O' && board.ary_boardcase[4].symbol == 'O' && board.ary_boardcase[8].symbol == "O"
      return true
    end
    if board.ary_boardcase[6].symbol == 'X' && board.ary_boardcase[4].symbol == 'X' && board.ary_boardcase[2].symbol == "X"
      return true
    end
    if board.ary_boardcase[6].symbol == 'O' && board.ary_boardcase[4].symbol == 'O' && board.ary_boardcase[2].symbol == "O"
      return true
    end
  end
end


