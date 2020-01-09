class CashRegister
    attr_accessor :total, :discount, :items, :price, :qty

    def initialize(given_discount = 0)
        @total = 0
        @discount = given_discount
        @items = []
    end

    def add_item(item_name, price, qty = 1)
        @total += price * qty
        @price = price
        @qty = qty
        num_items = qty

        while num_items > 0
            @items.push(item_name)
            num_items -= 1
        end
        @items
    end


    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else
            @total = @total * ((100-@discount.to_f)/100)
            return "After the discount, the total comes to $#{@total.to_i}."
        end
    end

    def void_last_transaction
        @total -= @qty * @price
        @total
    end
end



