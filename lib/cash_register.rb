require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items, :hash
    
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @hash = {}
    end


    def add_item(title,price,quantity=1.0)
        self.total += price.to_f * quantity.to_f
        quantity.to_i.times do @items << title
        @hash[:title] = price * quantity
    end

    def apply_discount
        if discount > 0 
        @total -= @total * (@discount.to_f/100.0)
        "After the discount, the total comes to $#{@total.to_i}."
        else 
        "There is no discount to apply."
    end
end
end
    def void_last_transaction
        if @hash.size == 0
        @total = 0
        else
        @total -= @hash.values.last
    end
end
end
