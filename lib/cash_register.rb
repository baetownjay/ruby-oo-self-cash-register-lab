require 'pry'
class CashRegister
    attr_accessor :total, :discount
    attr_reader 
  
    def initialize(discount=0)
        @discount = discount
        @total = total = 0
        @cart = []
    end
    def total
        @total
    end
    def add_item(title, price, quantity=1)
        @total += price * quantity
        quantity.times { @cart << title }
        @total
    end
    def apply_discount(discount=@discount)
        #discount = @discount
        if discount > 0
            discount = discount.to_f
            savings = (discount * @total / 100).round(2)
            savings = '%.2f' % savings
            #binding.pry
            @total = @total - savings 
            @total = '%.2f' % savings 
            "success"
        end
    end

end

john = CashRegister.new
p john.total

