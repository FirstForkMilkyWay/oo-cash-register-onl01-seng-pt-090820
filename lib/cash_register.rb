class CashRegister 
  
  attr_accessor :cash_register, :cash_register_with_discount, :total, :last_transaction_amount
  
  def initialize(cash_register_with_discount = nil)
    @total = 0 
  end 
  
  def discount(cash_register_with_discount = nil)
    cash_register_with_discount = 20
  end 
  
  def total 
   @total
  end 
  
 def add_item(title,price,quantity = 1)
    if quantity>1
      i=0
      while i<quantity
        @items << title
        i+=1
      end
    else
      @items << title
    end
    @total += price*quantity
    @last_transaction_amount = @total
    @total
  end
  


end 
