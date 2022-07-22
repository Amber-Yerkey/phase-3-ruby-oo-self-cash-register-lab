require 'pry'

class CashRegister
    attr_accessor :total, :discount, :quantity, :cost, :items

    def initialize(discount = 0.0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.cost = price * quantity
        self.total += cost
        quantity.times do
            self.items << title
            # binding.pry
        end
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
        full_discount = @total * (@discount.to_f / 100)
        @total = @total - full_discount
        # binding.pry
        "After the discount, the total comes to $#{self.total.to_i}."
        end
    end

    def void_last_transaction
        self.total -= self.cost
    end

end