class CashRegister 
  
  @@items = []
  attr_accessor :total, :discount, :item_prices
  
  def initialize(total = 0, discount = 0)
    @total = total
    @item_prices = []
    @discount = discount
    if @discount != 0
      apply_discount
    end
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @item_prices << price
    @total += price * quantity
    @@items << title
  end
  
  def apply_discount
    if @discount != 0
      @discount = @discount / 100
      @total = @total - (@total * discount)
      return "Success"
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @@items
  end
  
  def void_last_transaction(price)
    last_item = @item_prices.size - 1
    @total = @total - @item_prices[last_item]
    if @item_prices.size == 0 
      @total = 0.0 
    end
  end
  
  
end

