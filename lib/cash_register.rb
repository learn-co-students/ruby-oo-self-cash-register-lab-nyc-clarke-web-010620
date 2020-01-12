require "pry"
class CashRegister
  
  attr_accessor :total, :discount, :items, :hash, :transactions
  @@all = [] 
  
  def initialize(discount=nil)
    @total = 0 
    @discount = discount
    @items = [] 
    @transactions = [] 
    @hash = {} 
    @@all << self 
  end 
  

  def add_item(title, price, quantity=1)
      @total += price * quantity
      quantity.times do @items << title end
      @transactions << (price * quantity)
      # if @hash[title] == nil 
      #   @hash[title] = price
      # end 
    end 
      # binding.pry
  
  def void_last_transaction
    @total -= @transactions[-1]
  end 
  # def void_last_transaction
  #   @hash.each do |item, price|
  #     if @hash[item] == @items[-1]
  #       total -= price 
  #     end 
  #   end 
  # end 
  
  
  def apply_discount 
    if @discount != nil 
      @total -=  (@total * @discount) / 100
      
    return "After the discount, the total comes to $#{@total}."
    else 
      @total 
      return "There is no discount to apply."
    end 
  end 
  


end 

# cr1 = CashRegister.new(5)
# cr2 = CashRegister.new()

