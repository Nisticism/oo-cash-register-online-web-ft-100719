class CashRegister 
  
  attr_accessor :total, :discount, :items
  
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
      return "Success"
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total = @total - @item[@item.size - 1]
  end
  
  
end

