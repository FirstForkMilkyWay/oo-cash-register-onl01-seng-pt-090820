class CashRegister 
  
  attr_accessor :cash_register, :cash_register_with_discount
  
  def initialize
  
    @total = 0 
  end 
  
  def discount(cash_register_with_discount = nil)
    cash_register_with_discount = 20
  end 


end 
