class CashRegister 
  
  attr_accessor :total, :discount, :item_prices, :items
  
  def initialize(total = 0, discount = nil)
    @total = total
    @item_prices = []
    @items = []
    @discount = discount
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @item_prices << price
    @total += price * quantity
    counter = 0 
    while counter != quantity
      @items << title
      counter += 1 
    end
  end
  
  def apply_discount
    if @discount == nil 
      return "There is no discount to apply."
    else 
      float_discount = self.discount.to_f / 100.0
      self.total = self.total - (self.total * float_discount)
      return "After the discount, the total comes to #{self.total}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    last_item = @item_prices.size - 1
    @total = @total - @item_prices[last_item]
    @items.pop
    @item_prices.pop
    if @item_prices.size == 0 
      @total = 0.0 
    end
  end
  
  
end

