class BoardCase
	  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
	  attr_accessor :symbol, :case_id

  
  def initialize(case_id, symbol)
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @symbol = symbol
    @case_id = case_id
  end
  
end