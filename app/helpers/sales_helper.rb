module SalesHelper
    def state_of_sale(sale)
        case sale
        when true  
            "sold ✅ "
        when false 
            "on sale 🔄"
        else
            nil
        end
    end
end
