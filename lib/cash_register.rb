class CashRegister 
  
  attr_accessor :total, :discount
  
  def initialize(total = 0, *discount)
    @total = total 
    @discount = discount
    
  end
  
  def total
    @total
  end
  
  def add_item(title, price, *quantity)
    @total += 1 
  end
  
  def apply_discount
    if @discount != nil 
      @total -= @discount
    else
  end
  
  
  
end

