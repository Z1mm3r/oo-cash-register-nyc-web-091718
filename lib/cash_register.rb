require 'pry'

class CashRegister
  attr_accessor :total, :items
  attr_reader :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f
    @items = []
  end

  def add_item(item,price,quantity = 1)
    @total += price * quantity
    quantity.times {@items << item}

  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
    @total = (@total * (1 - @discount/100)).to_i
    "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = 0
  end

end
