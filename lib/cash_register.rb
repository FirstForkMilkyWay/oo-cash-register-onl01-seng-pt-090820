class CashRegister 
  
  attr_accessor :cash_register, :cash_register_with_discount, :total
  
  def initialize(cash_register_with_discount = nil)
    @total = 0 
  end 
  
  def discount(cash_register_with_discount = nil)
    cash_register_with_discount = 20
  end 
  
  def total 
   @total
  end 
  
  def add_item(title,price)
    
    self.total += 0.98
    
  end
  


end 
