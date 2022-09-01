module AdsHelper
    def state_of_sale(sale)
        if sale
            "sold ✅"
        else
            "on sale 🔄"
        end
    end
end
