class CashRegister
    attr_accessor :total, :items, :discount, :transactions
    
    def initialize(discount=0) 
        @total = 0
        @items = []
        @discount = discount
        @transactions = []
    end

    def add_item(title, price, qty=1)
        qty.times do 
            @items << title
        end

        @total += price * qty
        @transactions << price * qty

    end

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        end

        discount_amt = (@discount/100.00) * @total
        self.total = @total - discount_amt.to_i
        "After the discount, the total comes to $#{@total}."
    end

    def void_last_transaction
        self.total -= @transactions[-1]
        self.items.pop()
    end


end
