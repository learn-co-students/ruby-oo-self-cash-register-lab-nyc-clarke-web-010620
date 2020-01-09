class CashRegister

attr_accessor :total, :discount, :item, :last_transaction

def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = []
end

def add_item(title, price, quantity =1)
    quantity.times do
        @item << title
    end

    self.total += price * quantity

    self.last_transaction = amount * quantity
end

def apply_discount
    if discount != 0
        self.total = total - (total *(100.0 - discount.to_f))
        "After the discount, the total comes to $#{self.total}."

    else
        "There is no discount to apply."
    end
end

def void_last_transaction
    self.total -= self.last_transaction
end

end
















end
