require 'pry'

class CashRegister

    attr_accessor :items, :discount, :total, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, amount, quantity = 1)
        self.total += amount * quantity
        quantity.times do 
           items << title
        end
        self.last_transaction = amount * quantity

    end

    def apply_discount
        if discount != 0
            self.total = (total * (100.0 - discount.to_f)/100).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
    end
  
end




# def checkout
#     total = shopping_cart.inject {|sum, item| sum + item.price}
   
#     ...
#   end


# class CashRegister

#     attr_accessor :total, :discount

#     def initialize(discount = 0)
#         @total = 0
#         @discount = discount
#     end

#     def add_item(title, price, quantity = 1)
#         self.total += price * quantity
#         self.last_transaction
        
#     end

#     def apply_discount
#         if discount != 0
#            self.total = (total * (100 - discount)/100)
#            binding.pry
        
#            "After the discount, the total comes to #{self.total}."
#         else
#             "There is no discount to apply."
#          end
#     end

#          def void_last_transaction
#              self.total = self.total - self.last_transaction
#          end


# end