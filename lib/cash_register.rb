# Testing code in Repl https://repl.it/FDai

class CashRegister
   
    attr_accessor :total,:discount
    attr_writer  :opt, :price
   
    def initialize(discount = 0)
        @total = 0 
        @discount = discount
    end
    
    def add_item(title,price,opt=1)
        @title = title 
        @price = price
        @opt = opt
        @total = total + price  * opt 
    end
    
    def apply_discount 
        @new_total = @total -= @total*@discount / 100
        if @discount > 0 
            return "After the discount, the total comes to $#{@new_total}."
        else
            return "There is no discount to apply."
        end
    end
    
    def items
        @items = []
       if @title != nil
          return @items.push(@title,@opt) 
      else
          return "This #{@title} has already been added to the item list"
       end
      
       
    end
    
    
end

