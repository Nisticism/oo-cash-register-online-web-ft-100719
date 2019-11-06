class CashRegister 
  
  @@items = []
  attr_accessor :total, :discount
  
  def initialize(total = 0, discount*)
    @total = total 
    @discount = discount
    
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity* = 1)
    @total += price * quantity
    @@items << title
  end
  
  def apply_discount
    if @discount != nil 
      @total -= @discount
      return "Success"
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @@items
  end
  
  def void_last_transaction(price)
    @total = @total - price
  end
  
  
end

