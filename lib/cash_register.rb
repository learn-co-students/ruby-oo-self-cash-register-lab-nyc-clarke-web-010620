
require 'pry'
class CashRegister

    attr_accessor :total

    def initialize (discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def discount
        @discount
    end

    def add_item(item, price, quantity = 1)
        new_item = {}
        
        new_item["item"] = item
        new_item["price"] = price
        new_item["quantity"] = quantity
        
        @items << new_item

        @total = (new_item["price"] * new_item["quantity"]) + @total

        @total
    end

    def apply_discount
        if @discount > 0 
        discount = @total * @discount * 0.01
        @total = @total - discount
        "After the discount, the total comes to $#{@total.to_i}."
        else 
        "There is no discount to apply."
        end
    end

    def items
        all_items = []

        @items.each do |item|
            
            
        end


    end




end