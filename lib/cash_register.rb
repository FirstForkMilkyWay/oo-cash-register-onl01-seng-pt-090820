require 'pry'
class CashRegister 
  
  attr_accessor :cash_register, :cash_register_with_discount, :total, :last_transaction_amount , :discount 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @items = [ ]
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
  
  def apply_discount()
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items 
    @items 
  end 
  
  def void_last_transaction
    
  end 


end 
