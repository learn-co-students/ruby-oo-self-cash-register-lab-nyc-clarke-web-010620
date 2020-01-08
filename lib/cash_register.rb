require 'pry'

class CashRegister

attr_accessor :discount, :total, :cart, :last_item_price

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @cart = []
    end

    def add_item(title, price, quantity = 1)
        @last_item_price = price * quantity
        @total += price * quantity
        quantity.times do @cart << title
        end
    end

    def apply_discount
        @total *= ((100 - @discount).to_f/100)
        if @total > 0
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @cart
    end

    def void_last_transaction
        @total -= @last_item_price
    end

end
