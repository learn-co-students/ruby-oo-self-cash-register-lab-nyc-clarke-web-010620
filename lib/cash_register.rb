class CashRegister
    attr_accessor :total, :discount, :last_total
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @item = []
        @last_total = 0
    end
    def add_item(title, price, quantity = 1)
        new_total = @total + price * quantity
        @total = new_total
        quantity.times do
            @item << title
        end
        @last_total = price * quantity
    end
    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else
            discount_total = @total * (100 - discount)/100
            @total = discount_total
            return "After the discount, the total comes to $#{@total}."
        end
    end
    def items
        return @item
    end
    def void_last_transaction
        prev_total = @total - @last_total
        @total = prev_total
    end
end
